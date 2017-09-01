
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
20100044:	f000 fc58 	bl	201008f8 <SystemInit>
20100048:	23fa      	movs	r3, #250	; 0xfa
2010004a:	009b      	lsls	r3, r3, #2
2010004c:	0018      	movs	r0, r3
2010004e:	f000 fcb9 	bl	201009c4 <wait_timer_ticks>
20100052:	f000 fc63 	bl	2010091c <get_dcA>
20100056:	0003      	movs	r3, r0
20100058:	67fb      	str	r3, [r7, #124]	; 0x7c
2010005a:	f000 fc89 	bl	20100970 <get_dcB>
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
201000d0:	4aca      	ldr	r2, [pc, #808]	; (201003fc <main+0x3fc>)
201000d2:	605a      	str	r2, [r3, #4]
201000d4:	2308      	movs	r3, #8
201000d6:	18fb      	adds	r3, r7, r3
201000d8:	2200      	movs	r2, #0
201000da:	609a      	str	r2, [r3, #8]
201000dc:	2308      	movs	r3, #8
201000de:	18fb      	adds	r3, r7, r3
201000e0:	2200      	movs	r2, #0
201000e2:	60da      	str	r2, [r3, #12]
201000e4:	4bc6      	ldr	r3, [pc, #792]	; (20100400 <main+0x400>)
201000e6:	447b      	add	r3, pc
201000e8:	2200      	movs	r2, #0
201000ea:	601a      	str	r2, [r3, #0]
201000ec:	4bc5      	ldr	r3, [pc, #788]	; (20100404 <main+0x404>)
201000ee:	2257      	movs	r2, #87	; 0x57
201000f0:	601a      	str	r2, [r3, #0]
201000f2:	46c0      	nop			; (mov r8, r8)
201000f4:	4bc3      	ldr	r3, [pc, #780]	; (20100404 <main+0x404>)
201000f6:	6a1b      	ldr	r3, [r3, #32]
201000f8:	2204      	movs	r2, #4
201000fa:	4013      	ands	r3, r2
201000fc:	d0fa      	beq.n	201000f4 <main+0xf4>
201000fe:	4bc1      	ldr	r3, [pc, #772]	; (20100404 <main+0x404>)
20100100:	699b      	ldr	r3, [r3, #24]
20100102:	051b      	lsls	r3, r3, #20
20100104:	0d1b      	lsrs	r3, r3, #20
20100106:	2280      	movs	r2, #128	; 0x80
20100108:	18ba      	adds	r2, r7, r2
2010010a:	6013      	str	r3, [r2, #0]
2010010c:	4bbe      	ldr	r3, [pc, #760]	; (20100408 <main+0x408>)
2010010e:	447b      	add	r3, pc
20100110:	2280      	movs	r2, #128	; 0x80
20100112:	18ba      	adds	r2, r7, r2
20100114:	6812      	ldr	r2, [r2, #0]
20100116:	601a      	str	r2, [r3, #0]
20100118:	f000 fc72 	bl	20100a00 <init_pos>
2010011c:	4bbb      	ldr	r3, [pc, #748]	; (2010040c <main+0x40c>)
2010011e:	4abb      	ldr	r2, [pc, #748]	; (2010040c <main+0x40c>)
20100120:	6812      	ldr	r2, [r2, #0]
20100122:	2120      	movs	r1, #32
20100124:	430a      	orrs	r2, r1
20100126:	601a      	str	r2, [r3, #0]
20100128:	4bb9      	ldr	r3, [pc, #740]	; (20100410 <main+0x410>)
2010012a:	4aba      	ldr	r2, [pc, #744]	; (20100414 <main+0x414>)
2010012c:	609a      	str	r2, [r3, #8]
2010012e:	4bb5      	ldr	r3, [pc, #724]	; (20100404 <main+0x404>)
20100130:	2207      	movs	r2, #7
20100132:	601a      	str	r2, [r3, #0]
20100134:	46c0      	nop			; (mov r8, r8)
20100136:	4bb3      	ldr	r3, [pc, #716]	; (20100404 <main+0x404>)
20100138:	6a1b      	ldr	r3, [r3, #32]
2010013a:	2204      	movs	r2, #4
2010013c:	4013      	ands	r3, r2
2010013e:	d0fa      	beq.n	20100136 <main+0x136>
20100140:	4bb0      	ldr	r3, [pc, #704]	; (20100404 <main+0x404>)
20100142:	699b      	ldr	r3, [r3, #24]
20100144:	051b      	lsls	r3, r3, #20
20100146:	0d1a      	lsrs	r2, r3, #20
20100148:	0013      	movs	r3, r2
2010014a:	009b      	lsls	r3, r3, #2
2010014c:	189b      	adds	r3, r3, r2
2010014e:	0018      	movs	r0, r3
20100150:	f001 f900 	bl	20101354 <mfilter>
20100154:	0003      	movs	r3, r0
20100156:	2290      	movs	r2, #144	; 0x90
20100158:	18ba      	adds	r2, r7, r2
2010015a:	6013      	str	r3, [r2, #0]
2010015c:	2390      	movs	r3, #144	; 0x90
2010015e:	18fb      	adds	r3, r7, r3
20100160:	681b      	ldr	r3, [r3, #0]
20100162:	10da      	asrs	r2, r3, #3
20100164:	2390      	movs	r3, #144	; 0x90
20100166:	18fb      	adds	r3, r7, r3
20100168:	681b      	ldr	r3, [r3, #0]
2010016a:	18d3      	adds	r3, r2, r3
2010016c:	10db      	asrs	r3, r3, #3
2010016e:	22af      	movs	r2, #175	; 0xaf
20100170:	0092      	lsls	r2, r2, #2
20100172:	189a      	adds	r2, r3, r2
20100174:	4ba8      	ldr	r3, [pc, #672]	; (20100418 <main+0x418>)
20100176:	447b      	add	r3, pc
20100178:	601a      	str	r2, [r3, #0]
2010017a:	4ba8      	ldr	r3, [pc, #672]	; (2010041c <main+0x41c>)
2010017c:	4aa1      	ldr	r2, [pc, #644]	; (20100404 <main+0x404>)
2010017e:	6992      	ldr	r2, [r2, #24]
20100180:	0512      	lsls	r2, r2, #20
20100182:	0d12      	lsrs	r2, r2, #20
20100184:	605a      	str	r2, [r3, #4]
20100186:	4b9f      	ldr	r3, [pc, #636]	; (20100404 <main+0x404>)
20100188:	2237      	movs	r2, #55	; 0x37
2010018a:	601a      	str	r2, [r3, #0]
2010018c:	46c0      	nop			; (mov r8, r8)
2010018e:	4b9d      	ldr	r3, [pc, #628]	; (20100404 <main+0x404>)
20100190:	6a1b      	ldr	r3, [r3, #32]
20100192:	2204      	movs	r2, #4
20100194:	4013      	ands	r3, r2
20100196:	d0fa      	beq.n	2010018e <main+0x18e>
20100198:	4b9a      	ldr	r3, [pc, #616]	; (20100404 <main+0x404>)
2010019a:	699b      	ldr	r3, [r3, #24]
2010019c:	051b      	lsls	r3, r3, #20
2010019e:	0d1a      	lsrs	r2, r3, #20
201001a0:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
201001a2:	1ad3      	subs	r3, r2, r3
201001a4:	677b      	str	r3, [r7, #116]	; 0x74
201001a6:	4b97      	ldr	r3, [pc, #604]	; (20100404 <main+0x404>)
201001a8:	2247      	movs	r2, #71	; 0x47
201001aa:	601a      	str	r2, [r3, #0]
201001ac:	46c0      	nop			; (mov r8, r8)
201001ae:	4b95      	ldr	r3, [pc, #596]	; (20100404 <main+0x404>)
201001b0:	6a1b      	ldr	r3, [r3, #32]
201001b2:	2204      	movs	r2, #4
201001b4:	4013      	ands	r3, r2
201001b6:	d0fa      	beq.n	201001ae <main+0x1ae>
201001b8:	4b92      	ldr	r3, [pc, #584]	; (20100404 <main+0x404>)
201001ba:	699b      	ldr	r3, [r3, #24]
201001bc:	051b      	lsls	r3, r3, #20
201001be:	0d1a      	lsrs	r2, r3, #20
201001c0:	6fbb      	ldr	r3, [r7, #120]	; 0x78
201001c2:	1ad3      	subs	r3, r2, r3
201001c4:	673b      	str	r3, [r7, #112]	; 0x70
201001c6:	6f7b      	ldr	r3, [r7, #116]	; 0x74
201001c8:	425a      	negs	r2, r3
201001ca:	6f3b      	ldr	r3, [r7, #112]	; 0x70
201001cc:	1ad3      	subs	r3, r2, r3
201001ce:	66fb      	str	r3, [r7, #108]	; 0x6c
201001d0:	4b8c      	ldr	r3, [pc, #560]	; (20100404 <main+0x404>)
201001d2:	2257      	movs	r2, #87	; 0x57
201001d4:	601a      	str	r2, [r3, #0]
201001d6:	46c0      	nop			; (mov r8, r8)
201001d8:	4b8a      	ldr	r3, [pc, #552]	; (20100404 <main+0x404>)
201001da:	6a1b      	ldr	r3, [r3, #32]
201001dc:	2204      	movs	r2, #4
201001de:	4013      	ands	r3, r2
201001e0:	d0fa      	beq.n	201001d8 <main+0x1d8>
201001e2:	4b88      	ldr	r3, [pc, #544]	; (20100404 <main+0x404>)
201001e4:	699b      	ldr	r3, [r3, #24]
201001e6:	051b      	lsls	r3, r3, #20
201001e8:	0d1b      	lsrs	r3, r3, #20
201001ea:	2284      	movs	r2, #132	; 0x84
201001ec:	18ba      	adds	r2, r7, r2
201001ee:	6013      	str	r3, [r2, #0]
201001f0:	46c0      	nop			; (mov r8, r8)
201001f2:	4b8b      	ldr	r3, [pc, #556]	; (20100420 <main+0x420>)
201001f4:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201001f6:	2202      	movs	r2, #2
201001f8:	4013      	ands	r3, r2
201001fa:	d0fa      	beq.n	201001f2 <main+0x1f2>
201001fc:	4b88      	ldr	r3, [pc, #544]	; (20100420 <main+0x420>)
201001fe:	2200      	movs	r2, #0
20100200:	655a      	str	r2, [r3, #84]	; 0x54
20100202:	4b82      	ldr	r3, [pc, #520]	; (2010040c <main+0x40c>)
20100204:	4a81      	ldr	r2, [pc, #516]	; (2010040c <main+0x40c>)
20100206:	6812      	ldr	r2, [r2, #0]
20100208:	2120      	movs	r1, #32
2010020a:	438a      	bics	r2, r1
2010020c:	601a      	str	r2, [r3, #0]
2010020e:	4b80      	ldr	r3, [pc, #512]	; (20100410 <main+0x410>)
20100210:	689b      	ldr	r3, [r3, #8]
20100212:	051b      	lsls	r3, r3, #20
20100214:	0d1b      	lsrs	r3, r3, #20
20100216:	0018      	movs	r0, r3
20100218:	f000 fb56 	bl	201008c8 <g2b>
2010021c:	0003      	movs	r3, r0
2010021e:	66bb      	str	r3, [r7, #104]	; 0x68
20100220:	2398      	movs	r3, #152	; 0x98
20100222:	18fb      	adds	r3, r7, r3
20100224:	681b      	ldr	r3, [r3, #0]
20100226:	3301      	adds	r3, #1
20100228:	2298      	movs	r2, #152	; 0x98
2010022a:	18ba      	adds	r2, r7, r2
2010022c:	6013      	str	r3, [r2, #0]
2010022e:	2398      	movs	r3, #152	; 0x98
20100230:	18fb      	adds	r3, r7, r3
20100232:	681b      	ldr	r3, [r3, #0]
20100234:	2207      	movs	r2, #7
20100236:	4013      	ands	r3, r2
20100238:	d141      	bne.n	201002be <main+0x2be>
2010023a:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2010023c:	1d3a      	adds	r2, r7, #4
2010023e:	0011      	movs	r1, r2
20100240:	0018      	movs	r0, r3
20100242:	f001 f85f 	bl	20101304 <get_speed>
20100246:	0003      	movs	r3, r0
20100248:	667b      	str	r3, [r7, #100]	; 0x64
2010024a:	4b76      	ldr	r3, [pc, #472]	; (20100424 <main+0x424>)
2010024c:	447b      	add	r3, pc
2010024e:	681a      	ldr	r2, [r3, #0]
20100250:	687b      	ldr	r3, [r7, #4]
20100252:	1ad1      	subs	r1, r2, r3
20100254:	2308      	movs	r3, #8
20100256:	18fb      	adds	r3, r7, r3
20100258:	2200      	movs	r2, #0
2010025a:	0018      	movs	r0, r3
2010025c:	f000 fc12 	bl	20100a84 <update>
20100260:	2308      	movs	r3, #8
20100262:	18fb      	adds	r3, r7, r3
20100264:	68db      	ldr	r3, [r3, #12]
20100266:	129b      	asrs	r3, r3, #10
20100268:	2288      	movs	r2, #136	; 0x88
2010026a:	18ba      	adds	r2, r7, r2
2010026c:	6013      	str	r3, [r2, #0]
2010026e:	2388      	movs	r3, #136	; 0x88
20100270:	18fb      	adds	r3, r7, r3
20100272:	681a      	ldr	r2, [r3, #0]
20100274:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100276:	1ad1      	subs	r1, r2, r3
20100278:	2318      	movs	r3, #24
2010027a:	18fb      	adds	r3, r7, r3
2010027c:	2200      	movs	r2, #0
2010027e:	0018      	movs	r0, r3
20100280:	f000 fc00 	bl	20100a84 <update>
20100284:	2318      	movs	r3, #24
20100286:	18fb      	adds	r3, r7, r3
20100288:	68db      	ldr	r3, [r3, #12]
2010028a:	129b      	asrs	r3, r3, #10
2010028c:	2294      	movs	r2, #148	; 0x94
2010028e:	18ba      	adds	r2, r7, r2
20100290:	6013      	str	r3, [r2, #0]
20100292:	2394      	movs	r3, #148	; 0x94
20100294:	18fb      	adds	r3, r7, r3
20100296:	681a      	ldr	r2, [r3, #0]
20100298:	23fa      	movs	r3, #250	; 0xfa
2010029a:	009b      	lsls	r3, r3, #2
2010029c:	429a      	cmp	r2, r3
2010029e:	dd04      	ble.n	201002aa <main+0x2aa>
201002a0:	23fa      	movs	r3, #250	; 0xfa
201002a2:	009b      	lsls	r3, r3, #2
201002a4:	2294      	movs	r2, #148	; 0x94
201002a6:	18ba      	adds	r2, r7, r2
201002a8:	6013      	str	r3, [r2, #0]
201002aa:	2394      	movs	r3, #148	; 0x94
201002ac:	18fb      	adds	r3, r7, r3
201002ae:	681b      	ldr	r3, [r3, #0]
201002b0:	4a5d      	ldr	r2, [pc, #372]	; (20100428 <main+0x428>)
201002b2:	4293      	cmp	r3, r2
201002b4:	da03      	bge.n	201002be <main+0x2be>
201002b6:	4b5c      	ldr	r3, [pc, #368]	; (20100428 <main+0x428>)
201002b8:	2294      	movs	r2, #148	; 0x94
201002ba:	18ba      	adds	r2, r7, r2
201002bc:	6013      	str	r3, [r2, #0]
201002be:	2398      	movs	r3, #152	; 0x98
201002c0:	18fb      	adds	r3, r7, r3
201002c2:	681b      	ldr	r3, [r3, #0]
201002c4:	041b      	lsls	r3, r3, #16
201002c6:	0c1b      	lsrs	r3, r3, #16
201002c8:	d11d      	bne.n	20100306 <main+0x306>
201002ca:	4b58      	ldr	r3, [pc, #352]	; (2010042c <main+0x42c>)
201002cc:	447b      	add	r3, pc
201002ce:	681b      	ldr	r3, [r3, #0]
201002d0:	4a57      	ldr	r2, [pc, #348]	; (20100430 <main+0x430>)
201002d2:	189a      	adds	r2, r3, r2
201002d4:	4b57      	ldr	r3, [pc, #348]	; (20100434 <main+0x434>)
201002d6:	447b      	add	r3, pc
201002d8:	601a      	str	r2, [r3, #0]
201002da:	4b57      	ldr	r3, [pc, #348]	; (20100438 <main+0x438>)
201002dc:	447b      	add	r3, pc
201002de:	681b      	ldr	r3, [r3, #0]
201002e0:	425a      	negs	r2, r3
201002e2:	4b56      	ldr	r3, [pc, #344]	; (2010043c <main+0x43c>)
201002e4:	447b      	add	r3, pc
201002e6:	601a      	str	r2, [r3, #0]
201002e8:	4b55      	ldr	r3, [pc, #340]	; (20100440 <main+0x440>)
201002ea:	447b      	add	r3, pc
201002ec:	681a      	ldr	r2, [r3, #0]
201002ee:	2380      	movs	r3, #128	; 0x80
201002f0:	18fb      	adds	r3, r7, r3
201002f2:	681b      	ldr	r3, [r3, #0]
201002f4:	1ad2      	subs	r2, r2, r3
201002f6:	0013      	movs	r3, r2
201002f8:	00db      	lsls	r3, r3, #3
201002fa:	1a9b      	subs	r3, r3, r2
201002fc:	00da      	lsls	r2, r3, #3
201002fe:	1ad2      	subs	r2, r2, r3
20100300:	4b50      	ldr	r3, [pc, #320]	; (20100444 <main+0x444>)
20100302:	447b      	add	r3, pc
20100304:	601a      	str	r2, [r3, #0]
20100306:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100308:	059b      	lsls	r3, r3, #22
2010030a:	0d9b      	lsrs	r3, r3, #22
2010030c:	228c      	movs	r2, #140	; 0x8c
2010030e:	18ba      	adds	r2, r7, r2
20100310:	6013      	str	r3, [r2, #0]
20100312:	238c      	movs	r3, #140	; 0x8c
20100314:	18fb      	adds	r3, r7, r3
20100316:	681b      	ldr	r3, [r3, #0]
20100318:	33fa      	adds	r3, #250	; 0xfa
2010031a:	059b      	lsls	r3, r3, #22
2010031c:	0d9b      	lsrs	r3, r3, #22
2010031e:	228c      	movs	r2, #140	; 0x8c
20100320:	18ba      	adds	r2, r7, r2
20100322:	6013      	str	r3, [r2, #0]
20100324:	2348      	movs	r3, #72	; 0x48
20100326:	18fb      	adds	r3, r7, r3
20100328:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2010032a:	601a      	str	r2, [r3, #0]
2010032c:	2348      	movs	r3, #72	; 0x48
2010032e:	18fb      	adds	r3, r7, r3
20100330:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100332:	605a      	str	r2, [r3, #4]
20100334:	2348      	movs	r3, #72	; 0x48
20100336:	18fb      	adds	r3, r7, r3
20100338:	6f3a      	ldr	r2, [r7, #112]	; 0x70
2010033a:	609a      	str	r2, [r3, #8]
2010033c:	238c      	movs	r3, #140	; 0x8c
2010033e:	18fb      	adds	r3, r7, r3
20100340:	681a      	ldr	r2, [r3, #0]
20100342:	2354      	movs	r3, #84	; 0x54
20100344:	18f9      	adds	r1, r7, r3
20100346:	2348      	movs	r3, #72	; 0x48
20100348:	18fb      	adds	r3, r7, r3
2010034a:	0018      	movs	r0, r3
2010034c:	f000 fbc0 	bl	20100ad0 <abc_to_dq>
20100350:	2354      	movs	r3, #84	; 0x54
20100352:	18fb      	adds	r3, r7, r3
20100354:	681b      	ldr	r3, [r3, #0]
20100356:	425b      	negs	r3, r3
20100358:	663b      	str	r3, [r7, #96]	; 0x60
2010035a:	2354      	movs	r3, #84	; 0x54
2010035c:	18fb      	adds	r3, r7, r3
2010035e:	685b      	ldr	r3, [r3, #4]
20100360:	2294      	movs	r2, #148	; 0x94
20100362:	18ba      	adds	r2, r7, r2
20100364:	6812      	ldr	r2, [r2, #0]
20100366:	1ad3      	subs	r3, r2, r3
20100368:	65fb      	str	r3, [r7, #92]	; 0x5c
2010036a:	239c      	movs	r3, #156	; 0x9c
2010036c:	18fb      	adds	r3, r7, r3
2010036e:	681a      	ldr	r2, [r3, #0]
20100370:	6e39      	ldr	r1, [r7, #96]	; 0x60
20100372:	2338      	movs	r3, #56	; 0x38
20100374:	18fb      	adds	r3, r7, r3
20100376:	0018      	movs	r0, r3
20100378:	f000 fb84 	bl	20100a84 <update>
2010037c:	239c      	movs	r3, #156	; 0x9c
2010037e:	18fb      	adds	r3, r7, r3
20100380:	681a      	ldr	r2, [r3, #0]
20100382:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20100384:	2328      	movs	r3, #40	; 0x28
20100386:	18fb      	adds	r3, r7, r3
20100388:	0018      	movs	r0, r3
2010038a:	f000 fb7b 	bl	20100a84 <update>
2010038e:	2338      	movs	r3, #56	; 0x38
20100390:	18fb      	adds	r3, r7, r3
20100392:	68da      	ldr	r2, [r3, #12]
20100394:	2354      	movs	r3, #84	; 0x54
20100396:	18fb      	adds	r3, r7, r3
20100398:	601a      	str	r2, [r3, #0]
2010039a:	2328      	movs	r3, #40	; 0x28
2010039c:	18fb      	adds	r3, r7, r3
2010039e:	68da      	ldr	r2, [r3, #12]
201003a0:	2354      	movs	r3, #84	; 0x54
201003a2:	18fb      	adds	r3, r7, r3
201003a4:	605a      	str	r2, [r3, #4]
201003a6:	238c      	movs	r3, #140	; 0x8c
201003a8:	18fb      	adds	r3, r7, r3
201003aa:	681a      	ldr	r2, [r3, #0]
201003ac:	2354      	movs	r3, #84	; 0x54
201003ae:	18f9      	adds	r1, r7, r3
201003b0:	2348      	movs	r3, #72	; 0x48
201003b2:	18fb      	adds	r3, r7, r3
201003b4:	0018      	movs	r0, r3
201003b6:	f000 fde9 	bl	20100f8c <svpwm>
201003ba:	0003      	movs	r3, r0
201003bc:	229c      	movs	r2, #156	; 0x9c
201003be:	18ba      	adds	r2, r7, r2
201003c0:	6013      	str	r3, [r2, #0]
201003c2:	4a17      	ldr	r2, [pc, #92]	; (20100420 <main+0x420>)
201003c4:	2348      	movs	r3, #72	; 0x48
201003c6:	18fb      	adds	r3, r7, r3
201003c8:	681b      	ldr	r3, [r3, #0]
201003ca:	2180      	movs	r1, #128	; 0x80
201003cc:	0089      	lsls	r1, r1, #2
201003ce:	468c      	mov	ip, r1
201003d0:	4463      	add	r3, ip
201003d2:	6113      	str	r3, [r2, #16]
201003d4:	4a12      	ldr	r2, [pc, #72]	; (20100420 <main+0x420>)
201003d6:	2348      	movs	r3, #72	; 0x48
201003d8:	18fb      	adds	r3, r7, r3
201003da:	685b      	ldr	r3, [r3, #4]
201003dc:	2180      	movs	r1, #128	; 0x80
201003de:	0089      	lsls	r1, r1, #2
201003e0:	468c      	mov	ip, r1
201003e2:	4463      	add	r3, ip
201003e4:	6153      	str	r3, [r2, #20]
201003e6:	4a0e      	ldr	r2, [pc, #56]	; (20100420 <main+0x420>)
201003e8:	2348      	movs	r3, #72	; 0x48
201003ea:	18fb      	adds	r3, r7, r3
201003ec:	689b      	ldr	r3, [r3, #8]
201003ee:	2180      	movs	r1, #128	; 0x80
201003f0:	0089      	lsls	r1, r1, #2
201003f2:	468c      	mov	ip, r1
201003f4:	4463      	add	r3, ip
201003f6:	6193      	str	r3, [r2, #24]
201003f8:	e690      	b.n	2010011c <main+0x11c>
201003fa:	46c0      	nop			; (mov r8, r8)
201003fc:	00000bb8 	.word	0x00000bb8
20100400:	ffefff2e 	.word	0xffefff2e
20100404:	40088000 	.word	0x40088000
20100408:	ffefff0a 	.word	0xffefff0a
2010040c:	400b8000 	.word	0x400b8000
20100410:	400a0000 	.word	0x400a0000
20100414:	00000555 	.word	0x00000555
20100418:	ffeffea2 	.word	0xffeffea2
2010041c:	40090000 	.word	0x40090000
20100420:	40098000 	.word	0x40098000
20100424:	ffeffdc8 	.word	0xffeffdc8
20100428:	fffffc18 	.word	0xfffffc18
2010042c:	ffeffd34 	.word	0xffeffd34
20100430:	00000898 	.word	0x00000898
20100434:	ffeffd42 	.word	0xffeffd42
20100438:	ffeffd24 	.word	0xffeffd24
2010043c:	ffeffd1c 	.word	0xffeffd1c
20100440:	ffeffd2e 	.word	0xffeffd2e
20100444:	ffeffd12 	.word	0xffeffd12

20100448 <sleep>:
20100448:	b580      	push	{r7, lr}
2010044a:	b084      	sub	sp, #16
2010044c:	af00      	add	r7, sp, #0
2010044e:	6078      	str	r0, [r7, #4]
20100450:	4b08      	ldr	r3, [pc, #32]	; (20100474 <sleep+0x2c>)
20100452:	447b      	add	r3, pc
20100454:	681a      	ldr	r2, [r3, #0]
20100456:	687b      	ldr	r3, [r7, #4]
20100458:	18d3      	adds	r3, r2, r3
2010045a:	60fb      	str	r3, [r7, #12]
2010045c:	46c0      	nop			; (mov r8, r8)
2010045e:	4b06      	ldr	r3, [pc, #24]	; (20100478 <sleep+0x30>)
20100460:	447b      	add	r3, pc
20100462:	681a      	ldr	r2, [r3, #0]
20100464:	68fb      	ldr	r3, [r7, #12]
20100466:	429a      	cmp	r2, r3
20100468:	d3f9      	bcc.n	2010045e <sleep+0x16>
2010046a:	46c0      	nop			; (mov r8, r8)
2010046c:	0018      	movs	r0, r3
2010046e:	46bd      	mov	sp, r7
20100470:	b004      	add	sp, #16
20100472:	bd80      	pop	{r7, pc}
20100474:	ffeffbca 	.word	0xffeffbca
20100478:	ffeffbbc 	.word	0xffeffbbc

2010047c <PortConfig>:
2010047c:	b580      	push	{r7, lr}
2010047e:	af00      	add	r7, sp, #0
20100480:	4b42      	ldr	r3, [pc, #264]	; (2010058c <PortConfig+0x110>)
20100482:	4a42      	ldr	r2, [pc, #264]	; (2010058c <PortConfig+0x110>)
20100484:	69d2      	ldr	r2, [r2, #28]
20100486:	2180      	movs	r1, #128	; 0x80
20100488:	0389      	lsls	r1, r1, #14
2010048a:	430a      	orrs	r2, r1
2010048c:	61da      	str	r2, [r3, #28]
2010048e:	4b40      	ldr	r3, [pc, #256]	; (20100590 <PortConfig+0x114>)
20100490:	4a3f      	ldr	r2, [pc, #252]	; (20100590 <PortConfig+0x114>)
20100492:	6892      	ldr	r2, [r2, #8]
20100494:	493f      	ldr	r1, [pc, #252]	; (20100594 <PortConfig+0x118>)
20100496:	400a      	ands	r2, r1
20100498:	609a      	str	r2, [r3, #8]
2010049a:	4b3d      	ldr	r3, [pc, #244]	; (20100590 <PortConfig+0x114>)
2010049c:	4a3c      	ldr	r2, [pc, #240]	; (20100590 <PortConfig+0x114>)
2010049e:	6892      	ldr	r2, [r2, #8]
201004a0:	493d      	ldr	r1, [pc, #244]	; (20100598 <PortConfig+0x11c>)
201004a2:	430a      	orrs	r2, r1
201004a4:	609a      	str	r2, [r3, #8]
201004a6:	4b3a      	ldr	r3, [pc, #232]	; (20100590 <PortConfig+0x114>)
201004a8:	4a39      	ldr	r2, [pc, #228]	; (20100590 <PortConfig+0x114>)
201004aa:	6852      	ldr	r2, [r2, #4]
201004ac:	21fc      	movs	r1, #252	; 0xfc
201004ae:	0109      	lsls	r1, r1, #4
201004b0:	430a      	orrs	r2, r1
201004b2:	605a      	str	r2, [r3, #4]
201004b4:	4b36      	ldr	r3, [pc, #216]	; (20100590 <PortConfig+0x114>)
201004b6:	4a36      	ldr	r2, [pc, #216]	; (20100590 <PortConfig+0x114>)
201004b8:	68d2      	ldr	r2, [r2, #12]
201004ba:	21fc      	movs	r1, #252	; 0xfc
201004bc:	0109      	lsls	r1, r1, #4
201004be:	430a      	orrs	r2, r1
201004c0:	60da      	str	r2, [r3, #12]
201004c2:	4b33      	ldr	r3, [pc, #204]	; (20100590 <PortConfig+0x114>)
201004c4:	4a32      	ldr	r2, [pc, #200]	; (20100590 <PortConfig+0x114>)
201004c6:	6992      	ldr	r2, [r2, #24]
201004c8:	4934      	ldr	r1, [pc, #208]	; (2010059c <PortConfig+0x120>)
201004ca:	430a      	orrs	r2, r1
201004cc:	619a      	str	r2, [r3, #24]
201004ce:	4b2f      	ldr	r3, [pc, #188]	; (2010058c <PortConfig+0x110>)
201004d0:	4a2e      	ldr	r2, [pc, #184]	; (2010058c <PortConfig+0x110>)
201004d2:	69d2      	ldr	r2, [r2, #28]
201004d4:	2180      	movs	r1, #128	; 0x80
201004d6:	0489      	lsls	r1, r1, #18
201004d8:	430a      	orrs	r2, r1
201004da:	61da      	str	r2, [r3, #28]
201004dc:	4b30      	ldr	r3, [pc, #192]	; (201005a0 <PortConfig+0x124>)
201004de:	4a30      	ldr	r2, [pc, #192]	; (201005a0 <PortConfig+0x124>)
201004e0:	68d2      	ldr	r2, [r2, #12]
201004e2:	2102      	movs	r1, #2
201004e4:	438a      	bics	r2, r1
201004e6:	60da      	str	r2, [r3, #12]
201004e8:	4b28      	ldr	r3, [pc, #160]	; (2010058c <PortConfig+0x110>)
201004ea:	4a28      	ldr	r2, [pc, #160]	; (2010058c <PortConfig+0x110>)
201004ec:	69d2      	ldr	r2, [r2, #28]
201004ee:	2180      	movs	r1, #128	; 0x80
201004f0:	0449      	lsls	r1, r1, #17
201004f2:	430a      	orrs	r2, r1
201004f4:	61da      	str	r2, [r3, #28]
201004f6:	4b2b      	ldr	r3, [pc, #172]	; (201005a4 <PortConfig+0x128>)
201004f8:	4a2a      	ldr	r2, [pc, #168]	; (201005a4 <PortConfig+0x128>)
201004fa:	6892      	ldr	r2, [r2, #8]
201004fc:	492a      	ldr	r1, [pc, #168]	; (201005a8 <PortConfig+0x12c>)
201004fe:	400a      	ands	r2, r1
20100500:	609a      	str	r2, [r3, #8]
20100502:	4b28      	ldr	r3, [pc, #160]	; (201005a4 <PortConfig+0x128>)
20100504:	4a27      	ldr	r2, [pc, #156]	; (201005a4 <PortConfig+0x128>)
20100506:	6892      	ldr	r2, [r2, #8]
20100508:	21a0      	movs	r1, #160	; 0xa0
2010050a:	02c9      	lsls	r1, r1, #11
2010050c:	430a      	orrs	r2, r1
2010050e:	609a      	str	r2, [r3, #8]
20100510:	4b24      	ldr	r3, [pc, #144]	; (201005a4 <PortConfig+0x128>)
20100512:	4a24      	ldr	r2, [pc, #144]	; (201005a4 <PortConfig+0x128>)
20100514:	68d2      	ldr	r2, [r2, #12]
20100516:	21c0      	movs	r1, #192	; 0xc0
20100518:	0089      	lsls	r1, r1, #2
2010051a:	430a      	orrs	r2, r1
2010051c:	60da      	str	r2, [r3, #12]
2010051e:	4b21      	ldr	r3, [pc, #132]	; (201005a4 <PortConfig+0x128>)
20100520:	4a20      	ldr	r2, [pc, #128]	; (201005a4 <PortConfig+0x128>)
20100522:	6992      	ldr	r2, [r2, #24]
20100524:	21c0      	movs	r1, #192	; 0xc0
20100526:	0309      	lsls	r1, r1, #12
20100528:	430a      	orrs	r2, r1
2010052a:	619a      	str	r2, [r3, #24]
2010052c:	4b1d      	ldr	r3, [pc, #116]	; (201005a4 <PortConfig+0x128>)
2010052e:	4a1d      	ldr	r2, [pc, #116]	; (201005a4 <PortConfig+0x128>)
20100530:	6852      	ldr	r2, [r2, #4]
20100532:	2180      	movs	r1, #128	; 0x80
20100534:	0089      	lsls	r1, r1, #2
20100536:	430a      	orrs	r2, r1
20100538:	605a      	str	r2, [r3, #4]
2010053a:	4b1a      	ldr	r3, [pc, #104]	; (201005a4 <PortConfig+0x128>)
2010053c:	4a19      	ldr	r2, [pc, #100]	; (201005a4 <PortConfig+0x128>)
2010053e:	6852      	ldr	r2, [r2, #4]
20100540:	491a      	ldr	r1, [pc, #104]	; (201005ac <PortConfig+0x130>)
20100542:	400a      	ands	r2, r1
20100544:	605a      	str	r2, [r3, #4]
20100546:	4b11      	ldr	r3, [pc, #68]	; (2010058c <PortConfig+0x110>)
20100548:	4a10      	ldr	r2, [pc, #64]	; (2010058c <PortConfig+0x110>)
2010054a:	69d2      	ldr	r2, [r2, #28]
2010054c:	2180      	movs	r1, #128	; 0x80
2010054e:	0409      	lsls	r1, r1, #16
20100550:	430a      	orrs	r2, r1
20100552:	61da      	str	r2, [r3, #28]
20100554:	4b16      	ldr	r3, [pc, #88]	; (201005b0 <PortConfig+0x134>)
20100556:	2200      	movs	r2, #0
20100558:	609a      	str	r2, [r3, #8]
2010055a:	4b15      	ldr	r3, [pc, #84]	; (201005b0 <PortConfig+0x134>)
2010055c:	2200      	movs	r2, #0
2010055e:	601a      	str	r2, [r3, #0]
20100560:	4b13      	ldr	r3, [pc, #76]	; (201005b0 <PortConfig+0x134>)
20100562:	4a13      	ldr	r2, [pc, #76]	; (201005b0 <PortConfig+0x134>)
20100564:	6852      	ldr	r2, [r2, #4]
20100566:	2120      	movs	r1, #32
20100568:	430a      	orrs	r2, r1
2010056a:	605a      	str	r2, [r3, #4]
2010056c:	4b10      	ldr	r3, [pc, #64]	; (201005b0 <PortConfig+0x134>)
2010056e:	4a10      	ldr	r2, [pc, #64]	; (201005b0 <PortConfig+0x134>)
20100570:	68d2      	ldr	r2, [r2, #12]
20100572:	2120      	movs	r1, #32
20100574:	430a      	orrs	r2, r1
20100576:	60da      	str	r2, [r3, #12]
20100578:	4b0d      	ldr	r3, [pc, #52]	; (201005b0 <PortConfig+0x134>)
2010057a:	4a0d      	ldr	r2, [pc, #52]	; (201005b0 <PortConfig+0x134>)
2010057c:	6992      	ldr	r2, [r2, #24]
2010057e:	21c0      	movs	r1, #192	; 0xc0
20100580:	0109      	lsls	r1, r1, #4
20100582:	430a      	orrs	r2, r1
20100584:	619a      	str	r2, [r3, #24]
20100586:	46c0      	nop			; (mov r8, r8)
20100588:	46bd      	mov	sp, r7
2010058a:	bd80      	pop	{r7, pc}
2010058c:	40020000 	.word	0x40020000
20100590:	400a8000 	.word	0x400a8000
20100594:	ff000fff 	.word	0xff000fff
20100598:	00aaa000 	.word	0x00aaa000
2010059c:	00fff000 	.word	0x00fff000
201005a0:	400c8000 	.word	0x400c8000
201005a4:	400c0000 	.word	0x400c0000
201005a8:	fff0ffff 	.word	0xfff0ffff
201005ac:	fffffeff 	.word	0xfffffeff
201005b0:	400b8000 	.word	0x400b8000

201005b4 <ClkConfig>:
201005b4:	b580      	push	{r7, lr}
201005b6:	af00      	add	r7, sp, #0
201005b8:	4b18      	ldr	r3, [pc, #96]	; (2010061c <ClkConfig+0x68>)
201005ba:	4a18      	ldr	r2, [pc, #96]	; (2010061c <ClkConfig+0x68>)
201005bc:	6892      	ldr	r2, [r2, #8]
201005be:	2101      	movs	r1, #1
201005c0:	430a      	orrs	r2, r1
201005c2:	609a      	str	r2, [r3, #8]
201005c4:	46c0      	nop			; (mov r8, r8)
201005c6:	4b15      	ldr	r3, [pc, #84]	; (2010061c <ClkConfig+0x68>)
201005c8:	681b      	ldr	r3, [r3, #0]
201005ca:	2204      	movs	r2, #4
201005cc:	4013      	ands	r3, r2
201005ce:	d0fa      	beq.n	201005c6 <ClkConfig+0x12>
201005d0:	4b12      	ldr	r3, [pc, #72]	; (2010061c <ClkConfig+0x68>)
201005d2:	4a12      	ldr	r2, [pc, #72]	; (2010061c <ClkConfig+0x68>)
201005d4:	68d2      	ldr	r2, [r2, #12]
201005d6:	2102      	movs	r1, #2
201005d8:	430a      	orrs	r2, r1
201005da:	60da      	str	r2, [r3, #12]
201005dc:	4b0f      	ldr	r3, [pc, #60]	; (2010061c <ClkConfig+0x68>)
201005de:	4a10      	ldr	r2, [pc, #64]	; (20100620 <ClkConfig+0x6c>)
201005e0:	605a      	str	r2, [r3, #4]
201005e2:	46c0      	nop			; (mov r8, r8)
201005e4:	4b0d      	ldr	r3, [pc, #52]	; (2010061c <ClkConfig+0x68>)
201005e6:	681b      	ldr	r3, [r3, #0]
201005e8:	2202      	movs	r2, #2
201005ea:	4013      	ands	r3, r2
201005ec:	d0fa      	beq.n	201005e4 <ClkConfig+0x30>
201005ee:	4b0d      	ldr	r3, [pc, #52]	; (20100624 <ClkConfig+0x70>)
201005f0:	4a0c      	ldr	r2, [pc, #48]	; (20100624 <ClkConfig+0x70>)
201005f2:	6812      	ldr	r2, [r2, #0]
201005f4:	2120      	movs	r1, #32
201005f6:	430a      	orrs	r2, r1
201005f8:	601a      	str	r2, [r3, #0]
201005fa:	4b08      	ldr	r3, [pc, #32]	; (2010061c <ClkConfig+0x68>)
201005fc:	4a07      	ldr	r2, [pc, #28]	; (2010061c <ClkConfig+0x68>)
201005fe:	68d2      	ldr	r2, [r2, #12]
20100600:	2180      	movs	r1, #128	; 0x80
20100602:	0049      	lsls	r1, r1, #1
20100604:	430a      	orrs	r2, r1
20100606:	60da      	str	r2, [r3, #12]
20100608:	4b04      	ldr	r3, [pc, #16]	; (2010061c <ClkConfig+0x68>)
2010060a:	4a04      	ldr	r2, [pc, #16]	; (2010061c <ClkConfig+0x68>)
2010060c:	68d2      	ldr	r2, [r2, #12]
2010060e:	2104      	movs	r1, #4
20100610:	430a      	orrs	r2, r1
20100612:	60da      	str	r2, [r3, #12]
20100614:	46c0      	nop			; (mov r8, r8)
20100616:	46bd      	mov	sp, r7
20100618:	bd80      	pop	{r7, pc}
2010061a:	46c0      	nop			; (mov r8, r8)
2010061c:	40020000 	.word	0x40020000
20100620:	00000e04 	.word	0x00000e04
20100624:	40018000 	.word	0x40018000

20100628 <TimerConfig>:
20100628:	b580      	push	{r7, lr}
2010062a:	af00      	add	r7, sp, #0
2010062c:	4b71      	ldr	r3, [pc, #452]	; (201007f4 <TimerConfig+0x1cc>)
2010062e:	4a71      	ldr	r2, [pc, #452]	; (201007f4 <TimerConfig+0x1cc>)
20100630:	69d2      	ldr	r2, [r2, #28]
20100632:	2180      	movs	r1, #128	; 0x80
20100634:	0309      	lsls	r1, r1, #12
20100636:	430a      	orrs	r2, r1
20100638:	61da      	str	r2, [r3, #28]
2010063a:	4b6e      	ldr	r3, [pc, #440]	; (201007f4 <TimerConfig+0x1cc>)
2010063c:	4a6d      	ldr	r2, [pc, #436]	; (201007f4 <TimerConfig+0x1cc>)
2010063e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100640:	2180      	movs	r1, #128	; 0x80
20100642:	04c9      	lsls	r1, r1, #19
20100644:	430a      	orrs	r2, r1
20100646:	629a      	str	r2, [r3, #40]	; 0x28
20100648:	4b6a      	ldr	r3, [pc, #424]	; (201007f4 <TimerConfig+0x1cc>)
2010064a:	4a6a      	ldr	r2, [pc, #424]	; (201007f4 <TimerConfig+0x1cc>)
2010064c:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010064e:	496a      	ldr	r1, [pc, #424]	; (201007f8 <TimerConfig+0x1d0>)
20100650:	400a      	ands	r2, r1
20100652:	629a      	str	r2, [r3, #40]	; 0x28
20100654:	4b69      	ldr	r3, [pc, #420]	; (201007fc <TimerConfig+0x1d4>)
20100656:	2200      	movs	r2, #0
20100658:	601a      	str	r2, [r3, #0]
2010065a:	4b68      	ldr	r3, [pc, #416]	; (201007fc <TimerConfig+0x1d4>)
2010065c:	2204      	movs	r2, #4
2010065e:	605a      	str	r2, [r3, #4]
20100660:	4b66      	ldr	r3, [pc, #408]	; (201007fc <TimerConfig+0x1d4>)
20100662:	4a67      	ldr	r2, [pc, #412]	; (20100800 <TimerConfig+0x1d8>)
20100664:	609a      	str	r2, [r3, #8]
20100666:	4b65      	ldr	r3, [pc, #404]	; (201007fc <TimerConfig+0x1d4>)
20100668:	2280      	movs	r2, #128	; 0x80
2010066a:	0092      	lsls	r2, r2, #2
2010066c:	611a      	str	r2, [r3, #16]
2010066e:	4b63      	ldr	r3, [pc, #396]	; (201007fc <TimerConfig+0x1d4>)
20100670:	2280      	movs	r2, #128	; 0x80
20100672:	0092      	lsls	r2, r2, #2
20100674:	615a      	str	r2, [r3, #20]
20100676:	4b61      	ldr	r3, [pc, #388]	; (201007fc <TimerConfig+0x1d4>)
20100678:	2280      	movs	r2, #128	; 0x80
2010067a:	0092      	lsls	r2, r2, #2
2010067c:	619a      	str	r2, [r3, #24]
2010067e:	4b5f      	ldr	r3, [pc, #380]	; (201007fc <TimerConfig+0x1d4>)
20100680:	4a5e      	ldr	r2, [pc, #376]	; (201007fc <TimerConfig+0x1d4>)
20100682:	6a12      	ldr	r2, [r2, #32]
20100684:	495f      	ldr	r1, [pc, #380]	; (20100804 <TimerConfig+0x1dc>)
20100686:	400a      	ands	r2, r1
20100688:	621a      	str	r2, [r3, #32]
2010068a:	4b5c      	ldr	r3, [pc, #368]	; (201007fc <TimerConfig+0x1d4>)
2010068c:	4a5b      	ldr	r2, [pc, #364]	; (201007fc <TimerConfig+0x1d4>)
2010068e:	6a12      	ldr	r2, [r2, #32]
20100690:	21e0      	movs	r1, #224	; 0xe0
20100692:	0109      	lsls	r1, r1, #4
20100694:	430a      	orrs	r2, r1
20100696:	621a      	str	r2, [r3, #32]
20100698:	4b58      	ldr	r3, [pc, #352]	; (201007fc <TimerConfig+0x1d4>)
2010069a:	4a58      	ldr	r2, [pc, #352]	; (201007fc <TimerConfig+0x1d4>)
2010069c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010069e:	210f      	movs	r1, #15
201006a0:	438a      	bics	r2, r1
201006a2:	631a      	str	r2, [r3, #48]	; 0x30
201006a4:	4b55      	ldr	r3, [pc, #340]	; (201007fc <TimerConfig+0x1d4>)
201006a6:	4a55      	ldr	r2, [pc, #340]	; (201007fc <TimerConfig+0x1d4>)
201006a8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006aa:	210c      	movs	r1, #12
201006ac:	430a      	orrs	r2, r1
201006ae:	631a      	str	r2, [r3, #48]	; 0x30
201006b0:	4b52      	ldr	r3, [pc, #328]	; (201007fc <TimerConfig+0x1d4>)
201006b2:	4a52      	ldr	r2, [pc, #328]	; (201007fc <TimerConfig+0x1d4>)
201006b4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006b6:	2101      	movs	r1, #1
201006b8:	430a      	orrs	r2, r1
201006ba:	631a      	str	r2, [r3, #48]	; 0x30
201006bc:	4b4f      	ldr	r3, [pc, #316]	; (201007fc <TimerConfig+0x1d4>)
201006be:	4a4f      	ldr	r2, [pc, #316]	; (201007fc <TimerConfig+0x1d4>)
201006c0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006c2:	4951      	ldr	r1, [pc, #324]	; (20100808 <TimerConfig+0x1e0>)
201006c4:	400a      	ands	r2, r1
201006c6:	631a      	str	r2, [r3, #48]	; 0x30
201006c8:	4b4c      	ldr	r3, [pc, #304]	; (201007fc <TimerConfig+0x1d4>)
201006ca:	4a4c      	ldr	r2, [pc, #304]	; (201007fc <TimerConfig+0x1d4>)
201006cc:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006ce:	21c0      	movs	r1, #192	; 0xc0
201006d0:	0109      	lsls	r1, r1, #4
201006d2:	430a      	orrs	r2, r1
201006d4:	631a      	str	r2, [r3, #48]	; 0x30
201006d6:	4b49      	ldr	r3, [pc, #292]	; (201007fc <TimerConfig+0x1d4>)
201006d8:	4a48      	ldr	r2, [pc, #288]	; (201007fc <TimerConfig+0x1d4>)
201006da:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006dc:	2180      	movs	r1, #128	; 0x80
201006de:	0049      	lsls	r1, r1, #1
201006e0:	430a      	orrs	r2, r1
201006e2:	631a      	str	r2, [r3, #48]	; 0x30
201006e4:	4b45      	ldr	r3, [pc, #276]	; (201007fc <TimerConfig+0x1d4>)
201006e6:	4a45      	ldr	r2, [pc, #276]	; (201007fc <TimerConfig+0x1d4>)
201006e8:	6a52      	ldr	r2, [r2, #36]	; 0x24
201006ea:	4946      	ldr	r1, [pc, #280]	; (20100804 <TimerConfig+0x1dc>)
201006ec:	400a      	ands	r2, r1
201006ee:	625a      	str	r2, [r3, #36]	; 0x24
201006f0:	4b42      	ldr	r3, [pc, #264]	; (201007fc <TimerConfig+0x1d4>)
201006f2:	4a42      	ldr	r2, [pc, #264]	; (201007fc <TimerConfig+0x1d4>)
201006f4:	6a52      	ldr	r2, [r2, #36]	; 0x24
201006f6:	21e0      	movs	r1, #224	; 0xe0
201006f8:	0109      	lsls	r1, r1, #4
201006fa:	430a      	orrs	r2, r1
201006fc:	625a      	str	r2, [r3, #36]	; 0x24
201006fe:	4b3f      	ldr	r3, [pc, #252]	; (201007fc <TimerConfig+0x1d4>)
20100700:	4a3e      	ldr	r2, [pc, #248]	; (201007fc <TimerConfig+0x1d4>)
20100702:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100704:	210f      	movs	r1, #15
20100706:	438a      	bics	r2, r1
20100708:	635a      	str	r2, [r3, #52]	; 0x34
2010070a:	4b3c      	ldr	r3, [pc, #240]	; (201007fc <TimerConfig+0x1d4>)
2010070c:	4a3b      	ldr	r2, [pc, #236]	; (201007fc <TimerConfig+0x1d4>)
2010070e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100710:	210c      	movs	r1, #12
20100712:	430a      	orrs	r2, r1
20100714:	635a      	str	r2, [r3, #52]	; 0x34
20100716:	4b39      	ldr	r3, [pc, #228]	; (201007fc <TimerConfig+0x1d4>)
20100718:	4a38      	ldr	r2, [pc, #224]	; (201007fc <TimerConfig+0x1d4>)
2010071a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010071c:	2101      	movs	r1, #1
2010071e:	430a      	orrs	r2, r1
20100720:	635a      	str	r2, [r3, #52]	; 0x34
20100722:	4b36      	ldr	r3, [pc, #216]	; (201007fc <TimerConfig+0x1d4>)
20100724:	4a35      	ldr	r2, [pc, #212]	; (201007fc <TimerConfig+0x1d4>)
20100726:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100728:	4937      	ldr	r1, [pc, #220]	; (20100808 <TimerConfig+0x1e0>)
2010072a:	400a      	ands	r2, r1
2010072c:	635a      	str	r2, [r3, #52]	; 0x34
2010072e:	4b33      	ldr	r3, [pc, #204]	; (201007fc <TimerConfig+0x1d4>)
20100730:	4a32      	ldr	r2, [pc, #200]	; (201007fc <TimerConfig+0x1d4>)
20100732:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100734:	21c0      	movs	r1, #192	; 0xc0
20100736:	0109      	lsls	r1, r1, #4
20100738:	430a      	orrs	r2, r1
2010073a:	635a      	str	r2, [r3, #52]	; 0x34
2010073c:	4b2f      	ldr	r3, [pc, #188]	; (201007fc <TimerConfig+0x1d4>)
2010073e:	4a2f      	ldr	r2, [pc, #188]	; (201007fc <TimerConfig+0x1d4>)
20100740:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100742:	2180      	movs	r1, #128	; 0x80
20100744:	0049      	lsls	r1, r1, #1
20100746:	430a      	orrs	r2, r1
20100748:	635a      	str	r2, [r3, #52]	; 0x34
2010074a:	4b2c      	ldr	r3, [pc, #176]	; (201007fc <TimerConfig+0x1d4>)
2010074c:	4a2b      	ldr	r2, [pc, #172]	; (201007fc <TimerConfig+0x1d4>)
2010074e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100750:	492c      	ldr	r1, [pc, #176]	; (20100804 <TimerConfig+0x1dc>)
20100752:	400a      	ands	r2, r1
20100754:	629a      	str	r2, [r3, #40]	; 0x28
20100756:	4b29      	ldr	r3, [pc, #164]	; (201007fc <TimerConfig+0x1d4>)
20100758:	4a28      	ldr	r2, [pc, #160]	; (201007fc <TimerConfig+0x1d4>)
2010075a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010075c:	21e0      	movs	r1, #224	; 0xe0
2010075e:	0109      	lsls	r1, r1, #4
20100760:	430a      	orrs	r2, r1
20100762:	629a      	str	r2, [r3, #40]	; 0x28
20100764:	4b25      	ldr	r3, [pc, #148]	; (201007fc <TimerConfig+0x1d4>)
20100766:	4a25      	ldr	r2, [pc, #148]	; (201007fc <TimerConfig+0x1d4>)
20100768:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010076a:	210f      	movs	r1, #15
2010076c:	438a      	bics	r2, r1
2010076e:	639a      	str	r2, [r3, #56]	; 0x38
20100770:	4b22      	ldr	r3, [pc, #136]	; (201007fc <TimerConfig+0x1d4>)
20100772:	4a22      	ldr	r2, [pc, #136]	; (201007fc <TimerConfig+0x1d4>)
20100774:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100776:	210c      	movs	r1, #12
20100778:	430a      	orrs	r2, r1
2010077a:	639a      	str	r2, [r3, #56]	; 0x38
2010077c:	4b1f      	ldr	r3, [pc, #124]	; (201007fc <TimerConfig+0x1d4>)
2010077e:	4a1f      	ldr	r2, [pc, #124]	; (201007fc <TimerConfig+0x1d4>)
20100780:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100782:	2101      	movs	r1, #1
20100784:	430a      	orrs	r2, r1
20100786:	639a      	str	r2, [r3, #56]	; 0x38
20100788:	4b1c      	ldr	r3, [pc, #112]	; (201007fc <TimerConfig+0x1d4>)
2010078a:	4a1c      	ldr	r2, [pc, #112]	; (201007fc <TimerConfig+0x1d4>)
2010078c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010078e:	491e      	ldr	r1, [pc, #120]	; (20100808 <TimerConfig+0x1e0>)
20100790:	400a      	ands	r2, r1
20100792:	639a      	str	r2, [r3, #56]	; 0x38
20100794:	4b19      	ldr	r3, [pc, #100]	; (201007fc <TimerConfig+0x1d4>)
20100796:	4a19      	ldr	r2, [pc, #100]	; (201007fc <TimerConfig+0x1d4>)
20100798:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010079a:	21c0      	movs	r1, #192	; 0xc0
2010079c:	0109      	lsls	r1, r1, #4
2010079e:	430a      	orrs	r2, r1
201007a0:	639a      	str	r2, [r3, #56]	; 0x38
201007a2:	4b16      	ldr	r3, [pc, #88]	; (201007fc <TimerConfig+0x1d4>)
201007a4:	4a15      	ldr	r2, [pc, #84]	; (201007fc <TimerConfig+0x1d4>)
201007a6:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007a8:	2180      	movs	r1, #128	; 0x80
201007aa:	0049      	lsls	r1, r1, #1
201007ac:	430a      	orrs	r2, r1
201007ae:	639a      	str	r2, [r3, #56]	; 0x38
201007b0:	4b12      	ldr	r3, [pc, #72]	; (201007fc <TimerConfig+0x1d4>)
201007b2:	4a12      	ldr	r2, [pc, #72]	; (201007fc <TimerConfig+0x1d4>)
201007b4:	6c12      	ldr	r2, [r2, #64]	; 0x40
201007b6:	21c8      	movs	r1, #200	; 0xc8
201007b8:	01c9      	lsls	r1, r1, #7
201007ba:	430a      	orrs	r2, r1
201007bc:	641a      	str	r2, [r3, #64]	; 0x40
201007be:	4b0f      	ldr	r3, [pc, #60]	; (201007fc <TimerConfig+0x1d4>)
201007c0:	4a0e      	ldr	r2, [pc, #56]	; (201007fc <TimerConfig+0x1d4>)
201007c2:	6c52      	ldr	r2, [r2, #68]	; 0x44
201007c4:	21c8      	movs	r1, #200	; 0xc8
201007c6:	01c9      	lsls	r1, r1, #7
201007c8:	430a      	orrs	r2, r1
201007ca:	645a      	str	r2, [r3, #68]	; 0x44
201007cc:	4b0b      	ldr	r3, [pc, #44]	; (201007fc <TimerConfig+0x1d4>)
201007ce:	4a0b      	ldr	r2, [pc, #44]	; (201007fc <TimerConfig+0x1d4>)
201007d0:	6c92      	ldr	r2, [r2, #72]	; 0x48
201007d2:	21c8      	movs	r1, #200	; 0xc8
201007d4:	01c9      	lsls	r1, r1, #7
201007d6:	430a      	orrs	r2, r1
201007d8:	649a      	str	r2, [r3, #72]	; 0x48
201007da:	4b08      	ldr	r3, [pc, #32]	; (201007fc <TimerConfig+0x1d4>)
201007dc:	4a07      	ldr	r2, [pc, #28]	; (201007fc <TimerConfig+0x1d4>)
201007de:	6d92      	ldr	r2, [r2, #88]	; 0x58
201007e0:	21f0      	movs	r1, #240	; 0xf0
201007e2:	0149      	lsls	r1, r1, #5
201007e4:	430a      	orrs	r2, r1
201007e6:	659a      	str	r2, [r3, #88]	; 0x58
201007e8:	4b04      	ldr	r3, [pc, #16]	; (201007fc <TimerConfig+0x1d4>)
201007ea:	2201      	movs	r2, #1
201007ec:	60da      	str	r2, [r3, #12]
201007ee:	46c0      	nop			; (mov r8, r8)
201007f0:	46bd      	mov	sp, r7
201007f2:	bd80      	pop	{r7, pc}
201007f4:	40020000 	.word	0x40020000
201007f8:	ff00ffff 	.word	0xff00ffff
201007fc:	40098000 	.word	0x40098000
20100800:	000003ff 	.word	0x000003ff
20100804:	fffff1ff 	.word	0xfffff1ff
20100808:	fffff0ff 	.word	0xfffff0ff

2010080c <adc_init>:
2010080c:	b580      	push	{r7, lr}
2010080e:	af00      	add	r7, sp, #0
20100810:	4b07      	ldr	r3, [pc, #28]	; (20100830 <adc_init+0x24>)
20100812:	4a07      	ldr	r2, [pc, #28]	; (20100830 <adc_init+0x24>)
20100814:	69d2      	ldr	r2, [r2, #28]
20100816:	2180      	movs	r1, #128	; 0x80
20100818:	0289      	lsls	r1, r1, #10
2010081a:	430a      	orrs	r2, r1
2010081c:	61da      	str	r2, [r3, #28]
2010081e:	4b04      	ldr	r3, [pc, #16]	; (20100830 <adc_init+0x24>)
20100820:	4a04      	ldr	r2, [pc, #16]	; (20100834 <adc_init+0x28>)
20100822:	615a      	str	r2, [r3, #20]
20100824:	4b04      	ldr	r3, [pc, #16]	; (20100838 <adc_init+0x2c>)
20100826:	2245      	movs	r2, #69	; 0x45
20100828:	601a      	str	r2, [r3, #0]
2010082a:	46c0      	nop			; (mov r8, r8)
2010082c:	46bd      	mov	sp, r7
2010082e:	bd80      	pop	{r7, pc}
20100830:	40020000 	.word	0x40020000
20100834:	00002020 	.word	0x00002020
20100838:	40088000 	.word	0x40088000

2010083c <dac_init>:
2010083c:	b580      	push	{r7, lr}
2010083e:	af00      	add	r7, sp, #0
20100840:	4b07      	ldr	r3, [pc, #28]	; (20100860 <dac_init+0x24>)
20100842:	4a07      	ldr	r2, [pc, #28]	; (20100860 <dac_init+0x24>)
20100844:	69d2      	ldr	r2, [r2, #28]
20100846:	2180      	movs	r1, #128	; 0x80
20100848:	02c9      	lsls	r1, r1, #11
2010084a:	430a      	orrs	r2, r1
2010084c:	61da      	str	r2, [r3, #28]
2010084e:	4b05      	ldr	r3, [pc, #20]	; (20100864 <dac_init+0x28>)
20100850:	4a04      	ldr	r2, [pc, #16]	; (20100864 <dac_init+0x28>)
20100852:	6812      	ldr	r2, [r2, #0]
20100854:	2104      	movs	r1, #4
20100856:	430a      	orrs	r2, r1
20100858:	601a      	str	r2, [r3, #0]
2010085a:	46c0      	nop			; (mov r8, r8)
2010085c:	46bd      	mov	sp, r7
2010085e:	bd80      	pop	{r7, pc}
20100860:	40020000 	.word	0x40020000
20100864:	40090000 	.word	0x40090000

20100868 <ssi_init>:
20100868:	b580      	push	{r7, lr}
2010086a:	af00      	add	r7, sp, #0
2010086c:	4b0c      	ldr	r3, [pc, #48]	; (201008a0 <ssi_init+0x38>)
2010086e:	4a0c      	ldr	r2, [pc, #48]	; (201008a0 <ssi_init+0x38>)
20100870:	69d2      	ldr	r2, [r2, #28]
20100872:	2180      	movs	r1, #128	; 0x80
20100874:	0349      	lsls	r1, r1, #13
20100876:	430a      	orrs	r2, r1
20100878:	61da      	str	r2, [r3, #28]
2010087a:	4b09      	ldr	r3, [pc, #36]	; (201008a0 <ssi_init+0x38>)
2010087c:	4a09      	ldr	r2, [pc, #36]	; (201008a4 <ssi_init+0x3c>)
2010087e:	62da      	str	r2, [r3, #44]	; 0x2c
20100880:	4b09      	ldr	r3, [pc, #36]	; (201008a8 <ssi_init+0x40>)
20100882:	2200      	movs	r2, #0
20100884:	605a      	str	r2, [r3, #4]
20100886:	4b08      	ldr	r3, [pc, #32]	; (201008a8 <ssi_init+0x40>)
20100888:	2210      	movs	r2, #16
2010088a:	611a      	str	r2, [r3, #16]
2010088c:	4b06      	ldr	r3, [pc, #24]	; (201008a8 <ssi_init+0x40>)
2010088e:	4a07      	ldr	r2, [pc, #28]	; (201008ac <ssi_init+0x44>)
20100890:	601a      	str	r2, [r3, #0]
20100892:	4b05      	ldr	r3, [pc, #20]	; (201008a8 <ssi_init+0x40>)
20100894:	2202      	movs	r2, #2
20100896:	605a      	str	r2, [r3, #4]
20100898:	46c0      	nop			; (mov r8, r8)
2010089a:	46bd      	mov	sp, r7
2010089c:	bd80      	pop	{r7, pc}
2010089e:	46c0      	nop			; (mov r8, r8)
201008a0:	40020000 	.word	0x40020000
201008a4:	02000a00 	.word	0x02000a00
201008a8:	400a0000 	.word	0x400a0000
201008ac:	0000021b 	.word	0x0000021b

201008b0 <b2g>:
201008b0:	b580      	push	{r7, lr}
201008b2:	b082      	sub	sp, #8
201008b4:	af00      	add	r7, sp, #0
201008b6:	6078      	str	r0, [r7, #4]
201008b8:	687b      	ldr	r3, [r7, #4]
201008ba:	085a      	lsrs	r2, r3, #1
201008bc:	687b      	ldr	r3, [r7, #4]
201008be:	4053      	eors	r3, r2
201008c0:	0018      	movs	r0, r3
201008c2:	46bd      	mov	sp, r7
201008c4:	b002      	add	sp, #8
201008c6:	bd80      	pop	{r7, pc}

201008c8 <g2b>:
201008c8:	b580      	push	{r7, lr}
201008ca:	b084      	sub	sp, #16
201008cc:	af00      	add	r7, sp, #0
201008ce:	6078      	str	r0, [r7, #4]
201008d0:	2300      	movs	r3, #0
201008d2:	60fb      	str	r3, [r7, #12]
201008d4:	2300      	movs	r3, #0
201008d6:	60fb      	str	r3, [r7, #12]
201008d8:	e006      	b.n	201008e8 <g2b+0x20>
201008da:	68fa      	ldr	r2, [r7, #12]
201008dc:	687b      	ldr	r3, [r7, #4]
201008de:	4053      	eors	r3, r2
201008e0:	60fb      	str	r3, [r7, #12]
201008e2:	687b      	ldr	r3, [r7, #4]
201008e4:	085b      	lsrs	r3, r3, #1
201008e6:	607b      	str	r3, [r7, #4]
201008e8:	687b      	ldr	r3, [r7, #4]
201008ea:	2b00      	cmp	r3, #0
201008ec:	d1f5      	bne.n	201008da <g2b+0x12>
201008ee:	68fb      	ldr	r3, [r7, #12]
201008f0:	0018      	movs	r0, r3
201008f2:	46bd      	mov	sp, r7
201008f4:	b004      	add	sp, #16
201008f6:	bd80      	pop	{r7, pc}

201008f8 <SystemInit>:
201008f8:	b580      	push	{r7, lr}
201008fa:	af00      	add	r7, sp, #0
201008fc:	f7ff fe5a 	bl	201005b4 <ClkConfig>
20100900:	f7ff fdbc 	bl	2010047c <PortConfig>
20100904:	f7ff fe90 	bl	20100628 <TimerConfig>
20100908:	f7ff ff80 	bl	2010080c <adc_init>
2010090c:	f7ff ff96 	bl	2010083c <dac_init>
20100910:	f7ff ffaa 	bl	20100868 <ssi_init>
20100914:	46c0      	nop			; (mov r8, r8)
20100916:	46bd      	mov	sp, r7
20100918:	bd80      	pop	{r7, pc}
2010091a:	46c0      	nop			; (mov r8, r8)

2010091c <get_dcA>:
2010091c:	b580      	push	{r7, lr}
2010091e:	b082      	sub	sp, #8
20100920:	af00      	add	r7, sp, #0
20100922:	2300      	movs	r3, #0
20100924:	603b      	str	r3, [r7, #0]
20100926:	2300      	movs	r3, #0
20100928:	607b      	str	r3, [r7, #4]
2010092a:	e012      	b.n	20100952 <get_dcA+0x36>
2010092c:	4b0e      	ldr	r3, [pc, #56]	; (20100968 <get_dcA+0x4c>)
2010092e:	2237      	movs	r2, #55	; 0x37
20100930:	601a      	str	r2, [r3, #0]
20100932:	46c0      	nop			; (mov r8, r8)
20100934:	4b0c      	ldr	r3, [pc, #48]	; (20100968 <get_dcA+0x4c>)
20100936:	6a1b      	ldr	r3, [r3, #32]
20100938:	2204      	movs	r2, #4
2010093a:	4013      	ands	r3, r2
2010093c:	d0fa      	beq.n	20100934 <get_dcA+0x18>
2010093e:	4b0a      	ldr	r3, [pc, #40]	; (20100968 <get_dcA+0x4c>)
20100940:	699b      	ldr	r3, [r3, #24]
20100942:	051b      	lsls	r3, r3, #20
20100944:	0d1a      	lsrs	r2, r3, #20
20100946:	683b      	ldr	r3, [r7, #0]
20100948:	18d3      	adds	r3, r2, r3
2010094a:	603b      	str	r3, [r7, #0]
2010094c:	687b      	ldr	r3, [r7, #4]
2010094e:	3301      	adds	r3, #1
20100950:	607b      	str	r3, [r7, #4]
20100952:	687b      	ldr	r3, [r7, #4]
20100954:	4a05      	ldr	r2, [pc, #20]	; (2010096c <get_dcA+0x50>)
20100956:	4293      	cmp	r3, r2
20100958:	dde8      	ble.n	2010092c <get_dcA+0x10>
2010095a:	683b      	ldr	r3, [r7, #0]
2010095c:	129b      	asrs	r3, r3, #10
2010095e:	0018      	movs	r0, r3
20100960:	46bd      	mov	sp, r7
20100962:	b002      	add	sp, #8
20100964:	bd80      	pop	{r7, pc}
20100966:	46c0      	nop			; (mov r8, r8)
20100968:	40088000 	.word	0x40088000
2010096c:	000003ff 	.word	0x000003ff

20100970 <get_dcB>:
20100970:	b580      	push	{r7, lr}
20100972:	b082      	sub	sp, #8
20100974:	af00      	add	r7, sp, #0
20100976:	2300      	movs	r3, #0
20100978:	603b      	str	r3, [r7, #0]
2010097a:	2300      	movs	r3, #0
2010097c:	607b      	str	r3, [r7, #4]
2010097e:	e012      	b.n	201009a6 <get_dcB+0x36>
20100980:	4b0e      	ldr	r3, [pc, #56]	; (201009bc <get_dcB+0x4c>)
20100982:	2247      	movs	r2, #71	; 0x47
20100984:	601a      	str	r2, [r3, #0]
20100986:	46c0      	nop			; (mov r8, r8)
20100988:	4b0c      	ldr	r3, [pc, #48]	; (201009bc <get_dcB+0x4c>)
2010098a:	6a1b      	ldr	r3, [r3, #32]
2010098c:	2204      	movs	r2, #4
2010098e:	4013      	ands	r3, r2
20100990:	d0fa      	beq.n	20100988 <get_dcB+0x18>
20100992:	4b0a      	ldr	r3, [pc, #40]	; (201009bc <get_dcB+0x4c>)
20100994:	699b      	ldr	r3, [r3, #24]
20100996:	051b      	lsls	r3, r3, #20
20100998:	0d1a      	lsrs	r2, r3, #20
2010099a:	683b      	ldr	r3, [r7, #0]
2010099c:	18d3      	adds	r3, r2, r3
2010099e:	603b      	str	r3, [r7, #0]
201009a0:	687b      	ldr	r3, [r7, #4]
201009a2:	3301      	adds	r3, #1
201009a4:	607b      	str	r3, [r7, #4]
201009a6:	687b      	ldr	r3, [r7, #4]
201009a8:	4a05      	ldr	r2, [pc, #20]	; (201009c0 <get_dcB+0x50>)
201009aa:	4293      	cmp	r3, r2
201009ac:	dde8      	ble.n	20100980 <get_dcB+0x10>
201009ae:	683b      	ldr	r3, [r7, #0]
201009b0:	129b      	asrs	r3, r3, #10
201009b2:	0018      	movs	r0, r3
201009b4:	46bd      	mov	sp, r7
201009b6:	b002      	add	sp, #8
201009b8:	bd80      	pop	{r7, pc}
201009ba:	46c0      	nop			; (mov r8, r8)
201009bc:	40088000 	.word	0x40088000
201009c0:	000003ff 	.word	0x000003ff

201009c4 <wait_timer_ticks>:
201009c4:	b580      	push	{r7, lr}
201009c6:	b084      	sub	sp, #16
201009c8:	af00      	add	r7, sp, #0
201009ca:	6078      	str	r0, [r7, #4]
201009cc:	2300      	movs	r3, #0
201009ce:	60fb      	str	r3, [r7, #12]
201009d0:	e00b      	b.n	201009ea <wait_timer_ticks+0x26>
201009d2:	46c0      	nop			; (mov r8, r8)
201009d4:	4b09      	ldr	r3, [pc, #36]	; (201009fc <wait_timer_ticks+0x38>)
201009d6:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201009d8:	2202      	movs	r2, #2
201009da:	4013      	ands	r3, r2
201009dc:	d0fa      	beq.n	201009d4 <wait_timer_ticks+0x10>
201009de:	4b07      	ldr	r3, [pc, #28]	; (201009fc <wait_timer_ticks+0x38>)
201009e0:	2200      	movs	r2, #0
201009e2:	655a      	str	r2, [r3, #84]	; 0x54
201009e4:	68fb      	ldr	r3, [r7, #12]
201009e6:	3301      	adds	r3, #1
201009e8:	60fb      	str	r3, [r7, #12]
201009ea:	68fa      	ldr	r2, [r7, #12]
201009ec:	687b      	ldr	r3, [r7, #4]
201009ee:	429a      	cmp	r2, r3
201009f0:	dbef      	blt.n	201009d2 <wait_timer_ticks+0xe>
201009f2:	46c0      	nop			; (mov r8, r8)
201009f4:	46bd      	mov	sp, r7
201009f6:	b004      	add	sp, #16
201009f8:	bd80      	pop	{r7, pc}
201009fa:	46c0      	nop			; (mov r8, r8)
201009fc:	40098000 	.word	0x40098000

20100a00 <init_pos>:
20100a00:	b580      	push	{r7, lr}
20100a02:	b082      	sub	sp, #8
20100a04:	af00      	add	r7, sp, #0
20100a06:	4b0b      	ldr	r3, [pc, #44]	; (20100a34 <init_pos+0x34>)
20100a08:	4a0b      	ldr	r2, [pc, #44]	; (20100a38 <init_pos+0x38>)
20100a0a:	609a      	str	r2, [r3, #8]
20100a0c:	46c0      	nop			; (mov r8, r8)
20100a0e:	4b09      	ldr	r3, [pc, #36]	; (20100a34 <init_pos+0x34>)
20100a10:	68db      	ldr	r3, [r3, #12]
20100a12:	2204      	movs	r2, #4
20100a14:	4013      	ands	r3, r2
20100a16:	d0fa      	beq.n	20100a0e <init_pos+0xe>
20100a18:	4b06      	ldr	r3, [pc, #24]	; (20100a34 <init_pos+0x34>)
20100a1a:	689b      	ldr	r3, [r3, #8]
20100a1c:	051b      	lsls	r3, r3, #20
20100a1e:	0d1b      	lsrs	r3, r3, #20
20100a20:	0018      	movs	r0, r3
20100a22:	f7ff ff51 	bl	201008c8 <g2b>
20100a26:	0003      	movs	r3, r0
20100a28:	607b      	str	r3, [r7, #4]
20100a2a:	46c0      	nop			; (mov r8, r8)
20100a2c:	46bd      	mov	sp, r7
20100a2e:	b002      	add	sp, #8
20100a30:	bd80      	pop	{r7, pc}
20100a32:	46c0      	nop			; (mov r8, r8)
20100a34:	400a0000 	.word	0x400a0000
20100a38:	00000555 	.word	0x00000555

20100a3c <mycos>:
20100a3c:	4b05      	ldr	r3, [pc, #20]	; (20100a54 <mycos+0x18>)
20100a3e:	4a06      	ldr	r2, [pc, #24]	; (20100a58 <mycos+0x1c>)
20100a40:	447b      	add	r3, pc
20100a42:	0580      	lsls	r0, r0, #22
20100a44:	589b      	ldr	r3, [r3, r2]
20100a46:	0d00      	lsrs	r0, r0, #20
20100a48:	58c0      	ldr	r0, [r0, r3]
20100a4a:	b082      	sub	sp, #8
20100a4c:	9301      	str	r3, [sp, #4]
20100a4e:	b002      	add	sp, #8
20100a50:	4770      	bx	lr
20100a52:	46c0      	nop			; (mov r8, r8)
20100a54:	ffeff5c4 	.word	0xffeff5c4
20100a58:	00000000 	.word	0x00000000

20100a5c <mysin>:
20100a5c:	4b07      	ldr	r3, [pc, #28]	; (20100a7c <mysin+0x20>)
20100a5e:	4a08      	ldr	r2, [pc, #32]	; (20100a80 <mysin+0x24>)
20100a60:	447b      	add	r3, pc
20100a62:	589b      	ldr	r3, [r3, r2]
20100a64:	b082      	sub	sp, #8
20100a66:	9301      	str	r3, [sp, #4]
20100a68:	23c0      	movs	r3, #192	; 0xc0
20100a6a:	009b      	lsls	r3, r3, #2
20100a6c:	469c      	mov	ip, r3
20100a6e:	4460      	add	r0, ip
20100a70:	9b01      	ldr	r3, [sp, #4]
20100a72:	0580      	lsls	r0, r0, #22
20100a74:	0d00      	lsrs	r0, r0, #20
20100a76:	58c0      	ldr	r0, [r0, r3]
20100a78:	b002      	add	sp, #8
20100a7a:	4770      	bx	lr
20100a7c:	ffeff5a4 	.word	0xffeff5a4
20100a80:	00000000 	.word	0x00000000

20100a84 <update>:
20100a84:	b510      	push	{r4, lr}
20100a86:	6804      	ldr	r4, [r0, #0]
20100a88:	6883      	ldr	r3, [r0, #8]
20100a8a:	434c      	muls	r4, r1
20100a8c:	2a00      	cmp	r2, #0
20100a8e:	d004      	beq.n	20100a9a <update+0x16>
20100a90:	2b00      	cmp	r3, #0
20100a92:	dd09      	ble.n	20100aa8 <update+0x24>
20100a94:	2c00      	cmp	r4, #0
20100a96:	dd00      	ble.n	20100a9a <update+0x16>
20100a98:	2400      	movs	r4, #0
20100a9a:	6842      	ldr	r2, [r0, #4]
20100a9c:	18e3      	adds	r3, r4, r3
20100a9e:	4351      	muls	r1, r2
20100aa0:	18c9      	adds	r1, r1, r3
20100aa2:	60c1      	str	r1, [r0, #12]
20100aa4:	6083      	str	r3, [r0, #8]
20100aa6:	bd10      	pop	{r4, pc}
20100aa8:	2b00      	cmp	r3, #0
20100aaa:	d0f6      	beq.n	20100a9a <update+0x16>
20100aac:	43e2      	mvns	r2, r4
20100aae:	17d2      	asrs	r2, r2, #31
20100ab0:	4014      	ands	r4, r2
20100ab2:	e7f2      	b.n	20100a9a <update+0x16>

20100ab4 <dot3>:
20100ab4:	6803      	ldr	r3, [r0, #0]
20100ab6:	680a      	ldr	r2, [r1, #0]
20100ab8:	b510      	push	{r4, lr}
20100aba:	435a      	muls	r2, r3
20100abc:	6844      	ldr	r4, [r0, #4]
20100abe:	684b      	ldr	r3, [r1, #4]
20100ac0:	6880      	ldr	r0, [r0, #8]
20100ac2:	4363      	muls	r3, r4
20100ac4:	18d2      	adds	r2, r2, r3
20100ac6:	688b      	ldr	r3, [r1, #8]
20100ac8:	4343      	muls	r3, r0
20100aca:	18d0      	adds	r0, r2, r3
20100acc:	bd10      	pop	{r4, pc}
20100ace:	46c0      	nop			; (mov r8, r8)

20100ad0 <abc_to_dq>:
20100ad0:	b5f0      	push	{r4, r5, r6, r7, lr}
20100ad2:	4647      	mov	r7, r8
20100ad4:	b480      	push	{r7}
20100ad6:	4b1d      	ldr	r3, [pc, #116]	; (20100b4c <abc_to_dq+0x7c>)
20100ad8:	4c1d      	ldr	r4, [pc, #116]	; (20100b50 <abc_to_dq+0x80>)
20100ada:	447b      	add	r3, pc
20100adc:	591d      	ldr	r5, [r3, r4]
20100ade:	23c0      	movs	r3, #192	; 0xc0
20100ae0:	009b      	lsls	r3, r3, #2
20100ae2:	18d3      	adds	r3, r2, r3
20100ae4:	059b      	lsls	r3, r3, #22
20100ae6:	0d1b      	lsrs	r3, r3, #20
20100ae8:	595b      	ldr	r3, [r3, r5]
20100aea:	4698      	mov	r8, r3
20100aec:	4b19      	ldr	r3, [pc, #100]	; (20100b54 <abc_to_dq+0x84>)
20100aee:	18d4      	adds	r4, r2, r3
20100af0:	05a4      	lsls	r4, r4, #22
20100af2:	4b19      	ldr	r3, [pc, #100]	; (20100b58 <abc_to_dq+0x88>)
20100af4:	0d24      	lsrs	r4, r4, #20
20100af6:	5967      	ldr	r7, [r4, r5]
20100af8:	18d4      	adds	r4, r2, r3
20100afa:	05a4      	lsls	r4, r4, #22
20100afc:	4b17      	ldr	r3, [pc, #92]	; (20100b5c <abc_to_dq+0x8c>)
20100afe:	0d24      	lsrs	r4, r4, #20
20100b00:	5966      	ldr	r6, [r4, r5]
20100b02:	18d4      	adds	r4, r2, r3
20100b04:	05a4      	lsls	r4, r4, #22
20100b06:	0d24      	lsrs	r4, r4, #20
20100b08:	5964      	ldr	r4, [r4, r5]
20100b0a:	6843      	ldr	r3, [r0, #4]
20100b0c:	4363      	muls	r3, r4
20100b0e:	0094      	lsls	r4, r2, #2
20100b10:	469c      	mov	ip, r3
20100b12:	3256      	adds	r2, #86	; 0x56
20100b14:	32ff      	adds	r2, #255	; 0xff
20100b16:	6803      	ldr	r3, [r0, #0]
20100b18:	5964      	ldr	r4, [r4, r5]
20100b1a:	0592      	lsls	r2, r2, #22
20100b1c:	0d12      	lsrs	r2, r2, #20
20100b1e:	5955      	ldr	r5, [r2, r5]
20100b20:	435c      	muls	r4, r3
20100b22:	6883      	ldr	r3, [r0, #8]
20100b24:	4464      	add	r4, ip
20100b26:	435d      	muls	r5, r3
20100b28:	4643      	mov	r3, r8
20100b2a:	1964      	adds	r4, r4, r5
20100b2c:	12a4      	asrs	r4, r4, #10
20100b2e:	600c      	str	r4, [r1, #0]
20100b30:	6802      	ldr	r2, [r0, #0]
20100b32:	435a      	muls	r2, r3
20100b34:	6843      	ldr	r3, [r0, #4]
20100b36:	437b      	muls	r3, r7
20100b38:	18d3      	adds	r3, r2, r3
20100b3a:	6882      	ldr	r2, [r0, #8]
20100b3c:	4372      	muls	r2, r6
20100b3e:	189b      	adds	r3, r3, r2
20100b40:	425b      	negs	r3, r3
20100b42:	129b      	asrs	r3, r3, #10
20100b44:	604b      	str	r3, [r1, #4]
20100b46:	bc04      	pop	{r2}
20100b48:	4690      	mov	r8, r2
20100b4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100b4c:	ffeff52a 	.word	0xffeff52a
20100b50:	00000000 	.word	0x00000000
20100b54:	000005aa 	.word	0x000005aa
20100b58:	00000455 	.word	0x00000455
20100b5c:	000002aa 	.word	0x000002aa

20100b60 <dq_to_abc>:
20100b60:	b570      	push	{r4, r5, r6, lr}
20100b62:	4b1c      	ldr	r3, [pc, #112]	; (20100bd4 <dq_to_abc+0x74>)
20100b64:	4c1c      	ldr	r4, [pc, #112]	; (20100bd8 <dq_to_abc+0x78>)
20100b66:	447b      	add	r3, pc
20100b68:	591d      	ldr	r5, [r3, r4]
20100b6a:	0093      	lsls	r3, r2, #2
20100b6c:	680c      	ldr	r4, [r1, #0]
20100b6e:	595b      	ldr	r3, [r3, r5]
20100b70:	684e      	ldr	r6, [r1, #4]
20100b72:	435c      	muls	r4, r3
20100b74:	23c0      	movs	r3, #192	; 0xc0
20100b76:	009b      	lsls	r3, r3, #2
20100b78:	18d3      	adds	r3, r2, r3
20100b7a:	059b      	lsls	r3, r3, #22
20100b7c:	0d1b      	lsrs	r3, r3, #20
20100b7e:	595b      	ldr	r3, [r3, r5]
20100b80:	4373      	muls	r3, r6
20100b82:	1ae3      	subs	r3, r4, r3
20100b84:	151b      	asrs	r3, r3, #20
20100b86:	6003      	str	r3, [r0, #0]
20100b88:	4b14      	ldr	r3, [pc, #80]	; (20100bdc <dq_to_abc+0x7c>)
20100b8a:	680c      	ldr	r4, [r1, #0]
20100b8c:	18d3      	adds	r3, r2, r3
20100b8e:	059b      	lsls	r3, r3, #22
20100b90:	0d1b      	lsrs	r3, r3, #20
20100b92:	595b      	ldr	r3, [r3, r5]
20100b94:	684e      	ldr	r6, [r1, #4]
20100b96:	435c      	muls	r4, r3
20100b98:	4b11      	ldr	r3, [pc, #68]	; (20100be0 <dq_to_abc+0x80>)
20100b9a:	18d3      	adds	r3, r2, r3
20100b9c:	059b      	lsls	r3, r3, #22
20100b9e:	0d1b      	lsrs	r3, r3, #20
20100ba0:	595b      	ldr	r3, [r3, r5]
20100ba2:	4373      	muls	r3, r6
20100ba4:	1ae3      	subs	r3, r4, r3
20100ba6:	151b      	asrs	r3, r3, #20
20100ba8:	6043      	str	r3, [r0, #4]
20100baa:	0013      	movs	r3, r2
20100bac:	3356      	adds	r3, #86	; 0x56
20100bae:	33ff      	adds	r3, #255	; 0xff
20100bb0:	059b      	lsls	r3, r3, #22
20100bb2:	0d1b      	lsrs	r3, r3, #20
20100bb4:	595b      	ldr	r3, [r3, r5]
20100bb6:	680c      	ldr	r4, [r1, #0]
20100bb8:	435c      	muls	r4, r3
20100bba:	4b0a      	ldr	r3, [pc, #40]	; (20100be4 <dq_to_abc+0x84>)
20100bbc:	469c      	mov	ip, r3
20100bbe:	4462      	add	r2, ip
20100bc0:	0592      	lsls	r2, r2, #22
20100bc2:	0d12      	lsrs	r2, r2, #20
20100bc4:	5952      	ldr	r2, [r2, r5]
20100bc6:	684b      	ldr	r3, [r1, #4]
20100bc8:	4353      	muls	r3, r2
20100bca:	1ae3      	subs	r3, r4, r3
20100bcc:	151b      	asrs	r3, r3, #20
20100bce:	6083      	str	r3, [r0, #8]
20100bd0:	bd70      	pop	{r4, r5, r6, pc}
20100bd2:	46c0      	nop			; (mov r8, r8)
20100bd4:	ffeff49e 	.word	0xffeff49e
20100bd8:	00000000 	.word	0x00000000
20100bdc:	000002aa 	.word	0x000002aa
20100be0:	000005aa 	.word	0x000005aa
20100be4:	00000455 	.word	0x00000455

20100be8 <cord_atan>:
20100be8:	b5f0      	push	{r4, r5, r6, r7, lr}
20100bea:	4645      	mov	r5, r8
20100bec:	4657      	mov	r7, sl
20100bee:	464e      	mov	r6, r9
20100bf0:	b4e0      	push	{r5, r6, r7}
20100bf2:	4b65      	ldr	r3, [pc, #404]	; (20100d88 <cord_atan+0x1a0>)
20100bf4:	b090      	sub	sp, #64	; 0x40
20100bf6:	447b      	add	r3, pc
20100bf8:	001c      	movs	r4, r3
20100bfa:	4694      	mov	ip, r2
20100bfc:	466a      	mov	r2, sp
20100bfe:	468a      	mov	sl, r1
20100c00:	cca2      	ldmia	r4!, {r1, r5, r7}
20100c02:	c2a2      	stmia	r2!, {r1, r5, r7}
20100c04:	cca2      	ldmia	r4!, {r1, r5, r7}
20100c06:	c2a2      	stmia	r2!, {r1, r5, r7}
20100c08:	cc22      	ldmia	r4!, {r1, r5}
20100c0a:	c222      	stmia	r2!, {r1, r5}
20100c0c:	3320      	adds	r3, #32
20100c0e:	aa08      	add	r2, sp, #32
20100c10:	4690      	mov	r8, r2
20100c12:	cb32      	ldmia	r3!, {r1, r4, r5}
20100c14:	c232      	stmia	r2!, {r1, r4, r5}
20100c16:	cb32      	ldmia	r3!, {r1, r4, r5}
20100c18:	c232      	stmia	r2!, {r1, r4, r5}
20100c1a:	cb12      	ldmia	r3!, {r1, r4}
20100c1c:	c212      	stmia	r2!, {r1, r4}
20100c1e:	6802      	ldr	r2, [r0, #0]
20100c20:	6845      	ldr	r5, [r0, #4]
20100c22:	17d1      	asrs	r1, r2, #31
20100c24:	1853      	adds	r3, r2, r1
20100c26:	466e      	mov	r6, sp
20100c28:	404b      	eors	r3, r1
20100c2a:	2d00      	cmp	r5, #0
20100c2c:	dd6c      	ble.n	20100d08 <cord_atan+0x120>
20100c2e:	195f      	adds	r7, r3, r5
20100c30:	1aeb      	subs	r3, r5, r3
20100c32:	9d00      	ldr	r5, [sp, #0]
20100c34:	2b00      	cmp	r3, #0
20100c36:	d100      	bne.n	20100c3a <cord_atan+0x52>
20100c38:	e094      	b.n	20100d64 <cord_atan+0x17c>
20100c3a:	105c      	asrs	r4, r3, #1
20100c3c:	2b00      	cmp	r3, #0
20100c3e:	dd68      	ble.n	20100d12 <cord_atan+0x12a>
20100c40:	1078      	asrs	r0, r7, #1
20100c42:	1a1b      	subs	r3, r3, r0
20100c44:	6870      	ldr	r0, [r6, #4]
20100c46:	19e4      	adds	r4, r4, r7
20100c48:	4681      	mov	r9, r0
20100c4a:	444d      	add	r5, r9
20100c4c:	2b00      	cmp	r3, #0
20100c4e:	d100      	bne.n	20100c52 <cord_atan+0x6a>
20100c50:	e08a      	b.n	20100d68 <cord_atan+0x180>
20100c52:	1098      	asrs	r0, r3, #2
20100c54:	2b00      	cmp	r3, #0
20100c56:	dd62      	ble.n	20100d1e <cord_atan+0x136>
20100c58:	1907      	adds	r7, r0, r4
20100c5a:	10a4      	asrs	r4, r4, #2
20100c5c:	1b18      	subs	r0, r3, r4
20100c5e:	68b3      	ldr	r3, [r6, #8]
20100c60:	4699      	mov	r9, r3
20100c62:	444d      	add	r5, r9
20100c64:	2800      	cmp	r0, #0
20100c66:	d100      	bne.n	20100c6a <cord_atan+0x82>
20100c68:	e081      	b.n	20100d6e <cord_atan+0x186>
20100c6a:	10c3      	asrs	r3, r0, #3
20100c6c:	2800      	cmp	r0, #0
20100c6e:	dd5c      	ble.n	20100d2a <cord_atan+0x142>
20100c70:	10fc      	asrs	r4, r7, #3
20100c72:	1b00      	subs	r0, r0, r4
20100c74:	68f4      	ldr	r4, [r6, #12]
20100c76:	19db      	adds	r3, r3, r7
20100c78:	46a1      	mov	r9, r4
20100c7a:	444d      	add	r5, r9
20100c7c:	2800      	cmp	r0, #0
20100c7e:	d100      	bne.n	20100c82 <cord_atan+0x9a>
20100c80:	e077      	b.n	20100d72 <cord_atan+0x18a>
20100c82:	1104      	asrs	r4, r0, #4
20100c84:	2800      	cmp	r0, #0
20100c86:	dd56      	ble.n	20100d36 <cord_atan+0x14e>
20100c88:	18e7      	adds	r7, r4, r3
20100c8a:	111b      	asrs	r3, r3, #4
20100c8c:	1ac4      	subs	r4, r0, r3
20100c8e:	6933      	ldr	r3, [r6, #16]
20100c90:	4699      	mov	r9, r3
20100c92:	444d      	add	r5, r9
20100c94:	2c00      	cmp	r4, #0
20100c96:	d100      	bne.n	20100c9a <cord_atan+0xb2>
20100c98:	e06e      	b.n	20100d78 <cord_atan+0x190>
20100c9a:	1163      	asrs	r3, r4, #5
20100c9c:	2c00      	cmp	r4, #0
20100c9e:	dd50      	ble.n	20100d42 <cord_atan+0x15a>
20100ca0:	1178      	asrs	r0, r7, #5
20100ca2:	1a20      	subs	r0, r4, r0
20100ca4:	6974      	ldr	r4, [r6, #20]
20100ca6:	19db      	adds	r3, r3, r7
20100ca8:	46a1      	mov	r9, r4
20100caa:	444d      	add	r5, r9
20100cac:	2800      	cmp	r0, #0
20100cae:	d065      	beq.n	20100d7c <cord_atan+0x194>
20100cb0:	1184      	asrs	r4, r0, #6
20100cb2:	2800      	cmp	r0, #0
20100cb4:	dd4b      	ble.n	20100d4e <cord_atan+0x166>
20100cb6:	18e7      	adds	r7, r4, r3
20100cb8:	119b      	asrs	r3, r3, #6
20100cba:	1ac0      	subs	r0, r0, r3
20100cbc:	69b3      	ldr	r3, [r6, #24]
20100cbe:	4699      	mov	r9, r3
20100cc0:	444d      	add	r5, r9
20100cc2:	2800      	cmp	r0, #0
20100cc4:	d05d      	beq.n	20100d82 <cord_atan+0x19a>
20100cc6:	dd48      	ble.n	20100d5a <cord_atan+0x172>
20100cc8:	69f3      	ldr	r3, [r6, #28]
20100cca:	11c0      	asrs	r0, r0, #7
20100ccc:	19c7      	adds	r7, r0, r7
20100cce:	18ed      	adds	r5, r5, r3
20100cd0:	2307      	movs	r3, #7
20100cd2:	2a00      	cmp	r2, #0
20100cd4:	db14      	blt.n	20100d00 <cord_atan+0x118>
20100cd6:	2d00      	cmp	r5, #0
20100cd8:	da03      	bge.n	20100ce2 <cord_atan+0xfa>
20100cda:	2280      	movs	r2, #128	; 0x80
20100cdc:	00d2      	lsls	r2, r2, #3
20100cde:	4691      	mov	r9, r2
20100ce0:	444d      	add	r5, r9
20100ce2:	4652      	mov	r2, sl
20100ce4:	6015      	str	r5, [r2, #0]
20100ce6:	4642      	mov	r2, r8
20100ce8:	009b      	lsls	r3, r3, #2
20100cea:	58d0      	ldr	r0, [r2, r3]
20100cec:	4663      	mov	r3, ip
20100cee:	4378      	muls	r0, r7
20100cf0:	1280      	asrs	r0, r0, #10
20100cf2:	6018      	str	r0, [r3, #0]
20100cf4:	b010      	add	sp, #64	; 0x40
20100cf6:	bc1c      	pop	{r2, r3, r4}
20100cf8:	4690      	mov	r8, r2
20100cfa:	4699      	mov	r9, r3
20100cfc:	46a2      	mov	sl, r4
20100cfe:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100d00:	2280      	movs	r2, #128	; 0x80
20100d02:	0092      	lsls	r2, r2, #2
20100d04:	1b55      	subs	r5, r2, r5
20100d06:	e7e6      	b.n	20100cd6 <cord_atan+0xee>
20100d08:	9900      	ldr	r1, [sp, #0]
20100d0a:	1b5f      	subs	r7, r3, r5
20100d0c:	195b      	adds	r3, r3, r5
20100d0e:	424d      	negs	r5, r1
20100d10:	e790      	b.n	20100c34 <cord_atan+0x4c>
20100d12:	6871      	ldr	r1, [r6, #4]
20100d14:	1078      	asrs	r0, r7, #1
20100d16:	1b3c      	subs	r4, r7, r4
20100d18:	18c3      	adds	r3, r0, r3
20100d1a:	1a6d      	subs	r5, r5, r1
20100d1c:	e796      	b.n	20100c4c <cord_atan+0x64>
20100d1e:	1a27      	subs	r7, r4, r0
20100d20:	10a0      	asrs	r0, r4, #2
20100d22:	18c0      	adds	r0, r0, r3
20100d24:	68b3      	ldr	r3, [r6, #8]
20100d26:	1aed      	subs	r5, r5, r3
20100d28:	e79c      	b.n	20100c64 <cord_atan+0x7c>
20100d2a:	68f1      	ldr	r1, [r6, #12]
20100d2c:	10fc      	asrs	r4, r7, #3
20100d2e:	1afb      	subs	r3, r7, r3
20100d30:	1820      	adds	r0, r4, r0
20100d32:	1a6d      	subs	r5, r5, r1
20100d34:	e7a2      	b.n	20100c7c <cord_atan+0x94>
20100d36:	1b1f      	subs	r7, r3, r4
20100d38:	111c      	asrs	r4, r3, #4
20100d3a:	6933      	ldr	r3, [r6, #16]
20100d3c:	1824      	adds	r4, r4, r0
20100d3e:	1aed      	subs	r5, r5, r3
20100d40:	e7a8      	b.n	20100c94 <cord_atan+0xac>
20100d42:	6971      	ldr	r1, [r6, #20]
20100d44:	1178      	asrs	r0, r7, #5
20100d46:	1afb      	subs	r3, r7, r3
20100d48:	1900      	adds	r0, r0, r4
20100d4a:	1a6d      	subs	r5, r5, r1
20100d4c:	e7ae      	b.n	20100cac <cord_atan+0xc4>
20100d4e:	1b1f      	subs	r7, r3, r4
20100d50:	119b      	asrs	r3, r3, #6
20100d52:	1818      	adds	r0, r3, r0
20100d54:	69b3      	ldr	r3, [r6, #24]
20100d56:	1aed      	subs	r5, r5, r3
20100d58:	e7b3      	b.n	20100cc2 <cord_atan+0xda>
20100d5a:	69f3      	ldr	r3, [r6, #28]
20100d5c:	11c4      	asrs	r4, r0, #7
20100d5e:	1b3f      	subs	r7, r7, r4
20100d60:	1aed      	subs	r5, r5, r3
20100d62:	e7b5      	b.n	20100cd0 <cord_atan+0xe8>
20100d64:	2300      	movs	r3, #0
20100d66:	e7b4      	b.n	20100cd2 <cord_atan+0xea>
20100d68:	0027      	movs	r7, r4
20100d6a:	2301      	movs	r3, #1
20100d6c:	e7b1      	b.n	20100cd2 <cord_atan+0xea>
20100d6e:	2302      	movs	r3, #2
20100d70:	e7af      	b.n	20100cd2 <cord_atan+0xea>
20100d72:	001f      	movs	r7, r3
20100d74:	2303      	movs	r3, #3
20100d76:	e7ac      	b.n	20100cd2 <cord_atan+0xea>
20100d78:	2304      	movs	r3, #4
20100d7a:	e7aa      	b.n	20100cd2 <cord_atan+0xea>
20100d7c:	001f      	movs	r7, r3
20100d7e:	2305      	movs	r3, #5
20100d80:	e7a7      	b.n	20100cd2 <cord_atan+0xea>
20100d82:	2306      	movs	r3, #6
20100d84:	e7a5      	b.n	20100cd2 <cord_atan+0xea>
20100d86:	46c0      	nop			; (mov r8, r8)
20100d88:	00001796 	.word	0x00001796

20100d8c <sinpwm>:
20100d8c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100d8e:	465f      	mov	r7, fp
20100d90:	4656      	mov	r6, sl
20100d92:	464d      	mov	r5, r9
20100d94:	4644      	mov	r4, r8
20100d96:	b4f0      	push	{r4, r5, r6, r7}
20100d98:	b089      	sub	sp, #36	; 0x24
20100d9a:	466c      	mov	r4, sp
20100d9c:	4b75      	ldr	r3, [pc, #468]	; (20100f74 <sinpwm+0x1e8>)
20100d9e:	46eb      	mov	fp, sp
20100da0:	447b      	add	r3, pc
20100da2:	469a      	mov	sl, r3
20100da4:	4b74      	ldr	r3, [pc, #464]	; (20100f78 <sinpwm+0x1ec>)
20100da6:	447b      	add	r3, pc
20100da8:	3320      	adds	r3, #32
20100daa:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100dac:	c4e0      	stmia	r4!, {r5, r6, r7}
20100dae:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100db0:	c4e0      	stmia	r4!, {r5, r6, r7}
20100db2:	cb60      	ldmia	r3!, {r5, r6}
20100db4:	c460      	stmia	r4!, {r5, r6}
20100db6:	680b      	ldr	r3, [r1, #0]
20100db8:	684f      	ldr	r7, [r1, #4]
20100dba:	17dd      	asrs	r5, r3, #31
20100dbc:	195c      	adds	r4, r3, r5
20100dbe:	469c      	mov	ip, r3
20100dc0:	406c      	eors	r4, r5
20100dc2:	2f00      	cmp	r7, #0
20100dc4:	dc00      	bgt.n	20100dc8 <sinpwm+0x3c>
20100dc6:	e09c      	b.n	20100f02 <sinpwm+0x176>
20100dc8:	19e3      	adds	r3, r4, r7
20100dca:	1b3c      	subs	r4, r7, r4
20100dcc:	46a0      	mov	r8, r4
20100dce:	4644      	mov	r4, r8
20100dd0:	2c00      	cmp	r4, #0
20100dd2:	d100      	bne.n	20100dd6 <sinpwm+0x4a>
20100dd4:	e0bc      	b.n	20100f50 <sinpwm+0x1c4>
20100dd6:	dc00      	bgt.n	20100dda <sinpwm+0x4e>
20100dd8:	e097      	b.n	20100f0a <sinpwm+0x17e>
20100dda:	4644      	mov	r4, r8
20100ddc:	4645      	mov	r5, r8
20100dde:	1064      	asrs	r4, r4, #1
20100de0:	18e4      	adds	r4, r4, r3
20100de2:	105b      	asrs	r3, r3, #1
20100de4:	1aeb      	subs	r3, r5, r3
20100de6:	4698      	mov	r8, r3
20100de8:	4643      	mov	r3, r8
20100dea:	2b00      	cmp	r3, #0
20100dec:	d100      	bne.n	20100df0 <sinpwm+0x64>
20100dee:	e0b1      	b.n	20100f54 <sinpwm+0x1c8>
20100df0:	dc00      	bgt.n	20100df4 <sinpwm+0x68>
20100df2:	e08f      	b.n	20100f14 <sinpwm+0x188>
20100df4:	4643      	mov	r3, r8
20100df6:	4645      	mov	r5, r8
20100df8:	109b      	asrs	r3, r3, #2
20100dfa:	191b      	adds	r3, r3, r4
20100dfc:	10a4      	asrs	r4, r4, #2
20100dfe:	1b2c      	subs	r4, r5, r4
20100e00:	46a0      	mov	r8, r4
20100e02:	4644      	mov	r4, r8
20100e04:	2c00      	cmp	r4, #0
20100e06:	d100      	bne.n	20100e0a <sinpwm+0x7e>
20100e08:	e0a7      	b.n	20100f5a <sinpwm+0x1ce>
20100e0a:	dc00      	bgt.n	20100e0e <sinpwm+0x82>
20100e0c:	e087      	b.n	20100f1e <sinpwm+0x192>
20100e0e:	4644      	mov	r4, r8
20100e10:	4645      	mov	r5, r8
20100e12:	10e4      	asrs	r4, r4, #3
20100e14:	18e4      	adds	r4, r4, r3
20100e16:	10db      	asrs	r3, r3, #3
20100e18:	1aeb      	subs	r3, r5, r3
20100e1a:	4698      	mov	r8, r3
20100e1c:	4643      	mov	r3, r8
20100e1e:	2b00      	cmp	r3, #0
20100e20:	d100      	bne.n	20100e24 <sinpwm+0x98>
20100e22:	e09c      	b.n	20100f5e <sinpwm+0x1d2>
20100e24:	dc00      	bgt.n	20100e28 <sinpwm+0x9c>
20100e26:	e07f      	b.n	20100f28 <sinpwm+0x19c>
20100e28:	4643      	mov	r3, r8
20100e2a:	4645      	mov	r5, r8
20100e2c:	111b      	asrs	r3, r3, #4
20100e2e:	191b      	adds	r3, r3, r4
20100e30:	1124      	asrs	r4, r4, #4
20100e32:	1b2c      	subs	r4, r5, r4
20100e34:	2c00      	cmp	r4, #0
20100e36:	d100      	bne.n	20100e3a <sinpwm+0xae>
20100e38:	e094      	b.n	20100f64 <sinpwm+0x1d8>
20100e3a:	1165      	asrs	r5, r4, #5
20100e3c:	46a8      	mov	r8, r5
20100e3e:	2c00      	cmp	r4, #0
20100e40:	dc00      	bgt.n	20100e44 <sinpwm+0xb8>
20100e42:	e076      	b.n	20100f32 <sinpwm+0x1a6>
20100e44:	4498      	add	r8, r3
20100e46:	46c1      	mov	r9, r8
20100e48:	115b      	asrs	r3, r3, #5
20100e4a:	1ae4      	subs	r4, r4, r3
20100e4c:	2c00      	cmp	r4, #0
20100e4e:	d100      	bne.n	20100e52 <sinpwm+0xc6>
20100e50:	e08a      	b.n	20100f68 <sinpwm+0x1dc>
20100e52:	11a3      	asrs	r3, r4, #6
20100e54:	2c00      	cmp	r4, #0
20100e56:	dc00      	bgt.n	20100e5a <sinpwm+0xce>
20100e58:	e070      	b.n	20100f3c <sinpwm+0x1b0>
20100e5a:	444b      	add	r3, r9
20100e5c:	4698      	mov	r8, r3
20100e5e:	464b      	mov	r3, r9
20100e60:	119b      	asrs	r3, r3, #6
20100e62:	1ae4      	subs	r4, r4, r3
20100e64:	2c00      	cmp	r4, #0
20100e66:	d100      	bne.n	20100e6a <sinpwm+0xde>
20100e68:	e081      	b.n	20100f6e <sinpwm+0x1e2>
20100e6a:	dd6d      	ble.n	20100f48 <sinpwm+0x1bc>
20100e6c:	11e4      	asrs	r4, r4, #7
20100e6e:	0023      	movs	r3, r4
20100e70:	4443      	add	r3, r8
20100e72:	2407      	movs	r4, #7
20100e74:	465d      	mov	r5, fp
20100e76:	00a4      	lsls	r4, r4, #2
20100e78:	592c      	ldr	r4, [r5, r4]
20100e7a:	4655      	mov	r5, sl
20100e7c:	4666      	mov	r6, ip
20100e7e:	4363      	muls	r3, r4
20100e80:	4c3e      	ldr	r4, [pc, #248]	; (20100f7c <sinpwm+0x1f0>)
20100e82:	151b      	asrs	r3, r3, #20
20100e84:	592d      	ldr	r5, [r5, r4]
20100e86:	0094      	lsls	r4, r2, #2
20100e88:	5964      	ldr	r4, [r4, r5]
20100e8a:	4374      	muls	r4, r6
20100e8c:	26c0      	movs	r6, #192	; 0xc0
20100e8e:	00b6      	lsls	r6, r6, #2
20100e90:	1996      	adds	r6, r2, r6
20100e92:	05b6      	lsls	r6, r6, #22
20100e94:	0d36      	lsrs	r6, r6, #20
20100e96:	5976      	ldr	r6, [r6, r5]
20100e98:	4377      	muls	r7, r6
20100e9a:	1be7      	subs	r7, r4, r7
20100e9c:	4c38      	ldr	r4, [pc, #224]	; (20100f80 <sinpwm+0x1f4>)
20100e9e:	153f      	asrs	r7, r7, #20
20100ea0:	1914      	adds	r4, r2, r4
20100ea2:	05a4      	lsls	r4, r4, #22
20100ea4:	6007      	str	r7, [r0, #0]
20100ea6:	0d24      	lsrs	r4, r4, #20
20100ea8:	5964      	ldr	r4, [r4, r5]
20100eaa:	680e      	ldr	r6, [r1, #0]
20100eac:	684f      	ldr	r7, [r1, #4]
20100eae:	4366      	muls	r6, r4
20100eb0:	4c34      	ldr	r4, [pc, #208]	; (20100f84 <sinpwm+0x1f8>)
20100eb2:	1914      	adds	r4, r2, r4
20100eb4:	05a4      	lsls	r4, r4, #22
20100eb6:	0d24      	lsrs	r4, r4, #20
20100eb8:	5964      	ldr	r4, [r4, r5]
20100eba:	437c      	muls	r4, r7
20100ebc:	1b34      	subs	r4, r6, r4
20100ebe:	1524      	asrs	r4, r4, #20
20100ec0:	6044      	str	r4, [r0, #4]
20100ec2:	0014      	movs	r4, r2
20100ec4:	3456      	adds	r4, #86	; 0x56
20100ec6:	34ff      	adds	r4, #255	; 0xff
20100ec8:	05a4      	lsls	r4, r4, #22
20100eca:	0d24      	lsrs	r4, r4, #20
20100ecc:	680e      	ldr	r6, [r1, #0]
20100ece:	5964      	ldr	r4, [r4, r5]
20100ed0:	4374      	muls	r4, r6
20100ed2:	4e2d      	ldr	r6, [pc, #180]	; (20100f88 <sinpwm+0x1fc>)
20100ed4:	46b4      	mov	ip, r6
20100ed6:	4462      	add	r2, ip
20100ed8:	0592      	lsls	r2, r2, #22
20100eda:	0d12      	lsrs	r2, r2, #20
20100edc:	5955      	ldr	r5, [r2, r5]
20100ede:	684a      	ldr	r2, [r1, #4]
20100ee0:	436a      	muls	r2, r5
20100ee2:	1aa2      	subs	r2, r4, r2
20100ee4:	1512      	asrs	r2, r2, #20
20100ee6:	6082      	str	r2, [r0, #8]
20100ee8:	22fa      	movs	r2, #250	; 0xfa
20100eea:	2001      	movs	r0, #1
20100eec:	0052      	lsls	r2, r2, #1
20100eee:	4293      	cmp	r3, r2
20100ef0:	dc00      	bgt.n	20100ef4 <sinpwm+0x168>
20100ef2:	2000      	movs	r0, #0
20100ef4:	b009      	add	sp, #36	; 0x24
20100ef6:	bc3c      	pop	{r2, r3, r4, r5}
20100ef8:	4690      	mov	r8, r2
20100efa:	4699      	mov	r9, r3
20100efc:	46a2      	mov	sl, r4
20100efe:	46ab      	mov	fp, r5
20100f00:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100f02:	46a0      	mov	r8, r4
20100f04:	1be3      	subs	r3, r4, r7
20100f06:	44b8      	add	r8, r7
20100f08:	e761      	b.n	20100dce <sinpwm+0x42>
20100f0a:	1064      	asrs	r4, r4, #1
20100f0c:	1b1c      	subs	r4, r3, r4
20100f0e:	105b      	asrs	r3, r3, #1
20100f10:	4498      	add	r8, r3
20100f12:	e769      	b.n	20100de8 <sinpwm+0x5c>
20100f14:	109b      	asrs	r3, r3, #2
20100f16:	1ae3      	subs	r3, r4, r3
20100f18:	10a4      	asrs	r4, r4, #2
20100f1a:	44a0      	add	r8, r4
20100f1c:	e771      	b.n	20100e02 <sinpwm+0x76>
20100f1e:	10e4      	asrs	r4, r4, #3
20100f20:	1b1c      	subs	r4, r3, r4
20100f22:	10db      	asrs	r3, r3, #3
20100f24:	4498      	add	r8, r3
20100f26:	e779      	b.n	20100e1c <sinpwm+0x90>
20100f28:	111b      	asrs	r3, r3, #4
20100f2a:	1ae3      	subs	r3, r4, r3
20100f2c:	1124      	asrs	r4, r4, #4
20100f2e:	4444      	add	r4, r8
20100f30:	e780      	b.n	20100e34 <sinpwm+0xa8>
20100f32:	1b5d      	subs	r5, r3, r5
20100f34:	115b      	asrs	r3, r3, #5
20100f36:	46a9      	mov	r9, r5
20100f38:	191c      	adds	r4, r3, r4
20100f3a:	e787      	b.n	20100e4c <sinpwm+0xc0>
20100f3c:	464d      	mov	r5, r9
20100f3e:	1aeb      	subs	r3, r5, r3
20100f40:	4698      	mov	r8, r3
20100f42:	11ab      	asrs	r3, r5, #6
20100f44:	191c      	adds	r4, r3, r4
20100f46:	e78d      	b.n	20100e64 <sinpwm+0xd8>
20100f48:	4643      	mov	r3, r8
20100f4a:	11e4      	asrs	r4, r4, #7
20100f4c:	1b1b      	subs	r3, r3, r4
20100f4e:	e790      	b.n	20100e72 <sinpwm+0xe6>
20100f50:	2400      	movs	r4, #0
20100f52:	e78f      	b.n	20100e74 <sinpwm+0xe8>
20100f54:	0023      	movs	r3, r4
20100f56:	2401      	movs	r4, #1
20100f58:	e78c      	b.n	20100e74 <sinpwm+0xe8>
20100f5a:	2402      	movs	r4, #2
20100f5c:	e78a      	b.n	20100e74 <sinpwm+0xe8>
20100f5e:	0023      	movs	r3, r4
20100f60:	2403      	movs	r4, #3
20100f62:	e787      	b.n	20100e74 <sinpwm+0xe8>
20100f64:	2404      	movs	r4, #4
20100f66:	e785      	b.n	20100e74 <sinpwm+0xe8>
20100f68:	464b      	mov	r3, r9
20100f6a:	2405      	movs	r4, #5
20100f6c:	e782      	b.n	20100e74 <sinpwm+0xe8>
20100f6e:	4643      	mov	r3, r8
20100f70:	2406      	movs	r4, #6
20100f72:	e77f      	b.n	20100e74 <sinpwm+0xe8>
20100f74:	ffeff264 	.word	0xffeff264
20100f78:	000015e6 	.word	0x000015e6
20100f7c:	00000000 	.word	0x00000000
20100f80:	000002aa 	.word	0x000002aa
20100f84:	000005aa 	.word	0x000005aa
20100f88:	00000455 	.word	0x00000455

20100f8c <svpwm>:
20100f8c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100f8e:	465f      	mov	r7, fp
20100f90:	4656      	mov	r6, sl
20100f92:	4644      	mov	r4, r8
20100f94:	464d      	mov	r5, r9
20100f96:	b4f0      	push	{r4, r5, r6, r7}
20100f98:	0005      	movs	r5, r0
20100f9a:	48d0      	ldr	r0, [pc, #832]	; (201012dc <svpwm+0x350>)
20100f9c:	b091      	sub	sp, #68	; 0x44
20100f9e:	4478      	add	r0, pc
20100fa0:	0006      	movs	r6, r0
20100fa2:	466c      	mov	r4, sp
20100fa4:	4bce      	ldr	r3, [pc, #824]	; (201012e0 <svpwm+0x354>)
20100fa6:	4693      	mov	fp, r2
20100fa8:	447b      	add	r3, pc
20100faa:	469a      	mov	sl, r3
20100fac:	468c      	mov	ip, r1
20100fae:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100fb0:	c40e      	stmia	r4!, {r1, r2, r3}
20100fb2:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100fb4:	c40e      	stmia	r4!, {r1, r2, r3}
20100fb6:	ce0c      	ldmia	r6!, {r2, r3}
20100fb8:	c40c      	stmia	r4!, {r2, r3}
20100fba:	ae08      	add	r6, sp, #32
20100fbc:	0034      	movs	r4, r6
20100fbe:	3020      	adds	r0, #32
20100fc0:	c80e      	ldmia	r0!, {r1, r2, r3}
20100fc2:	c40e      	stmia	r4!, {r1, r2, r3}
20100fc4:	c80e      	ldmia	r0!, {r1, r2, r3}
20100fc6:	c40e      	stmia	r4!, {r1, r2, r3}
20100fc8:	c80c      	ldmia	r0!, {r2, r3}
20100fca:	c40c      	stmia	r4!, {r2, r3}
20100fcc:	4663      	mov	r3, ip
20100fce:	681c      	ldr	r4, [r3, #0]
20100fd0:	466f      	mov	r7, sp
20100fd2:	17e2      	asrs	r2, r4, #31
20100fd4:	18a3      	adds	r3, r4, r2
20100fd6:	4053      	eors	r3, r2
20100fd8:	4698      	mov	r8, r3
20100fda:	4663      	mov	r3, ip
20100fdc:	685b      	ldr	r3, [r3, #4]
20100fde:	2b00      	cmp	r3, #0
20100fe0:	dc00      	bgt.n	20100fe4 <svpwm+0x58>
20100fe2:	e0b5      	b.n	20101150 <svpwm+0x1c4>
20100fe4:	4641      	mov	r1, r8
20100fe6:	18c8      	adds	r0, r1, r3
20100fe8:	1a5b      	subs	r3, r3, r1
20100fea:	4698      	mov	r8, r3
20100fec:	9b00      	ldr	r3, [sp, #0]
20100fee:	4641      	mov	r1, r8
20100ff0:	2900      	cmp	r1, #0
20100ff2:	d100      	bne.n	20100ff6 <svpwm+0x6a>
20100ff4:	e15f      	b.n	201012b6 <svpwm+0x32a>
20100ff6:	dc00      	bgt.n	20100ffa <svpwm+0x6e>
20100ff8:	e0b0      	b.n	2010115c <svpwm+0x1d0>
20100ffa:	4641      	mov	r1, r8
20100ffc:	1049      	asrs	r1, r1, #1
20100ffe:	4689      	mov	r9, r1
20101000:	1041      	asrs	r1, r0, #1
20101002:	4481      	add	r9, r0
20101004:	4640      	mov	r0, r8
20101006:	1a41      	subs	r1, r0, r1
20101008:	4688      	mov	r8, r1
2010100a:	6879      	ldr	r1, [r7, #4]
2010100c:	468c      	mov	ip, r1
2010100e:	4463      	add	r3, ip
20101010:	4641      	mov	r1, r8
20101012:	2900      	cmp	r1, #0
20101014:	d100      	bne.n	20101018 <svpwm+0x8c>
20101016:	e150      	b.n	201012ba <svpwm+0x32e>
20101018:	dc00      	bgt.n	2010101c <svpwm+0x90>
2010101a:	e0a7      	b.n	2010116c <svpwm+0x1e0>
2010101c:	4641      	mov	r1, r8
2010101e:	1089      	asrs	r1, r1, #2
20101020:	4449      	add	r1, r9
20101022:	0008      	movs	r0, r1
20101024:	4649      	mov	r1, r9
20101026:	4642      	mov	r2, r8
20101028:	1089      	asrs	r1, r1, #2
2010102a:	1a51      	subs	r1, r2, r1
2010102c:	68ba      	ldr	r2, [r7, #8]
2010102e:	4688      	mov	r8, r1
20101030:	4694      	mov	ip, r2
20101032:	4463      	add	r3, ip
20101034:	4641      	mov	r1, r8
20101036:	2900      	cmp	r1, #0
20101038:	d100      	bne.n	2010103c <svpwm+0xb0>
2010103a:	e141      	b.n	201012c0 <svpwm+0x334>
2010103c:	4642      	mov	r2, r8
2010103e:	dc00      	bgt.n	20101042 <svpwm+0xb6>
20101040:	e09c      	b.n	2010117c <svpwm+0x1f0>
20101042:	10c9      	asrs	r1, r1, #3
20101044:	1809      	adds	r1, r1, r0
20101046:	10c0      	asrs	r0, r0, #3
20101048:	1a12      	subs	r2, r2, r0
2010104a:	4690      	mov	r8, r2
2010104c:	68fa      	ldr	r2, [r7, #12]
2010104e:	4694      	mov	ip, r2
20101050:	4463      	add	r3, ip
20101052:	4640      	mov	r0, r8
20101054:	2800      	cmp	r0, #0
20101056:	d100      	bne.n	2010105a <svpwm+0xce>
20101058:	e134      	b.n	201012c4 <svpwm+0x338>
2010105a:	4642      	mov	r2, r8
2010105c:	dc00      	bgt.n	20101060 <svpwm+0xd4>
2010105e:	e094      	b.n	2010118a <svpwm+0x1fe>
20101060:	1100      	asrs	r0, r0, #4
20101062:	1840      	adds	r0, r0, r1
20101064:	1109      	asrs	r1, r1, #4
20101066:	1a52      	subs	r2, r2, r1
20101068:	4690      	mov	r8, r2
2010106a:	693a      	ldr	r2, [r7, #16]
2010106c:	4694      	mov	ip, r2
2010106e:	4463      	add	r3, ip
20101070:	4641      	mov	r1, r8
20101072:	2900      	cmp	r1, #0
20101074:	d100      	bne.n	20101078 <svpwm+0xec>
20101076:	e128      	b.n	201012ca <svpwm+0x33e>
20101078:	4642      	mov	r2, r8
2010107a:	dc00      	bgt.n	2010107e <svpwm+0xf2>
2010107c:	e08c      	b.n	20101198 <svpwm+0x20c>
2010107e:	1149      	asrs	r1, r1, #5
20101080:	4689      	mov	r9, r1
20101082:	1141      	asrs	r1, r0, #5
20101084:	1a51      	subs	r1, r2, r1
20101086:	697a      	ldr	r2, [r7, #20]
20101088:	4481      	add	r9, r0
2010108a:	4694      	mov	ip, r2
2010108c:	4463      	add	r3, ip
2010108e:	2900      	cmp	r1, #0
20101090:	d100      	bne.n	20101094 <svpwm+0x108>
20101092:	e11c      	b.n	201012ce <svpwm+0x342>
20101094:	1188      	asrs	r0, r1, #6
20101096:	2900      	cmp	r1, #0
20101098:	dc00      	bgt.n	2010109c <svpwm+0x110>
2010109a:	e086      	b.n	201011aa <svpwm+0x21e>
2010109c:	464a      	mov	r2, r9
2010109e:	4448      	add	r0, r9
201010a0:	4680      	mov	r8, r0
201010a2:	1190      	asrs	r0, r2, #6
201010a4:	69ba      	ldr	r2, [r7, #24]
201010a6:	1a09      	subs	r1, r1, r0
201010a8:	4694      	mov	ip, r2
201010aa:	4463      	add	r3, ip
201010ac:	2900      	cmp	r1, #0
201010ae:	d100      	bne.n	201010b2 <svpwm+0x126>
201010b0:	e110      	b.n	201012d4 <svpwm+0x348>
201010b2:	dc00      	bgt.n	201010b6 <svpwm+0x12a>
201010b4:	e0e2      	b.n	2010127c <svpwm+0x2f0>
201010b6:	11c9      	asrs	r1, r1, #7
201010b8:	4441      	add	r1, r8
201010ba:	0008      	movs	r0, r1
201010bc:	69f9      	ldr	r1, [r7, #28]
201010be:	185b      	adds	r3, r3, r1
201010c0:	2107      	movs	r1, #7
201010c2:	2c00      	cmp	r4, #0
201010c4:	db40      	blt.n	20101148 <svpwm+0x1bc>
201010c6:	2b00      	cmp	r3, #0
201010c8:	da03      	bge.n	201010d2 <svpwm+0x146>
201010ca:	2280      	movs	r2, #128	; 0x80
201010cc:	00d2      	lsls	r2, r2, #3
201010ce:	4694      	mov	ip, r2
201010d0:	4463      	add	r3, ip
201010d2:	22fa      	movs	r2, #250	; 0xfa
201010d4:	0089      	lsls	r1, r1, #2
201010d6:	5871      	ldr	r1, [r6, r1]
201010d8:	445b      	add	r3, fp
201010da:	4341      	muls	r1, r0
201010dc:	059b      	lsls	r3, r3, #22
201010de:	1509      	asrs	r1, r1, #20
201010e0:	0d9b      	lsrs	r3, r3, #22
201010e2:	0052      	lsls	r2, r2, #1
201010e4:	2400      	movs	r4, #0
201010e6:	4291      	cmp	r1, r2
201010e8:	dd01      	ble.n	201010ee <svpwm+0x162>
201010ea:	0011      	movs	r1, r2
201010ec:	3401      	adds	r4, #1
201010ee:	0058      	lsls	r0, r3, #1
201010f0:	18c0      	adds	r0, r0, r3
201010f2:	1240      	asrs	r0, r0, #9
201010f4:	3801      	subs	r0, #1
201010f6:	4a7b      	ldr	r2, [pc, #492]	; (201012e4 <svpwm+0x358>)
201010f8:	2804      	cmp	r0, #4
201010fa:	d920      	bls.n	2010113e <svpwm+0x1b2>
201010fc:	26c0      	movs	r6, #192	; 0xc0
201010fe:	4650      	mov	r0, sl
20101100:	00b6      	lsls	r6, r6, #2
20101102:	46b4      	mov	ip, r6
20101104:	5880      	ldr	r0, [r0, r2]
20101106:	4a78      	ldr	r2, [pc, #480]	; (201012e8 <svpwm+0x35c>)
20101108:	1ad2      	subs	r2, r2, r3
2010110a:	4463      	add	r3, ip
2010110c:	0592      	lsls	r2, r2, #22
2010110e:	059b      	lsls	r3, r3, #22
20101110:	0d12      	lsrs	r2, r2, #20
20101112:	0d1b      	lsrs	r3, r3, #20
20101114:	581b      	ldr	r3, [r3, r0]
20101116:	5812      	ldr	r2, [r2, r0]
20101118:	434a      	muls	r2, r1
2010111a:	4359      	muls	r1, r3
2010111c:	1292      	asrs	r2, r2, #10
2010111e:	1289      	asrs	r1, r1, #10
20101120:	1853      	adds	r3, r2, r1
20101122:	602b      	str	r3, [r5, #0]
20101124:	1a8b      	subs	r3, r1, r2
20101126:	4252      	negs	r2, r2
20101128:	1a52      	subs	r2, r2, r1
2010112a:	606b      	str	r3, [r5, #4]
2010112c:	60aa      	str	r2, [r5, #8]
2010112e:	0020      	movs	r0, r4
20101130:	b011      	add	sp, #68	; 0x44
20101132:	bc3c      	pop	{r2, r3, r4, r5}
20101134:	4690      	mov	r8, r2
20101136:	4699      	mov	r9, r3
20101138:	46a2      	mov	sl, r4
2010113a:	46ab      	mov	fp, r5
2010113c:	bdf0      	pop	{r4, r5, r6, r7, pc}
2010113e:	f000 f91d 	bl	2010137c <__gnu_thumb1_case_uqi>
20101142:	856c      	.short	0x856c
20101144:	553d      	.short	0x553d
20101146:	a3          	.byte	0xa3
20101147:	00          	.byte	0x00
20101148:	2480      	movs	r4, #128	; 0x80
2010114a:	00a4      	lsls	r4, r4, #2
2010114c:	1ae3      	subs	r3, r4, r3
2010114e:	e7ba      	b.n	201010c6 <svpwm+0x13a>
20101150:	4642      	mov	r2, r8
20101152:	4498      	add	r8, r3
20101154:	1ad0      	subs	r0, r2, r3
20101156:	9b00      	ldr	r3, [sp, #0]
20101158:	425b      	negs	r3, r3
2010115a:	e748      	b.n	20100fee <svpwm+0x62>
2010115c:	1049      	asrs	r1, r1, #1
2010115e:	1a42      	subs	r2, r0, r1
20101160:	4691      	mov	r9, r2
20101162:	687a      	ldr	r2, [r7, #4]
20101164:	1041      	asrs	r1, r0, #1
20101166:	4488      	add	r8, r1
20101168:	1a9b      	subs	r3, r3, r2
2010116a:	e751      	b.n	20101010 <svpwm+0x84>
2010116c:	464a      	mov	r2, r9
2010116e:	1089      	asrs	r1, r1, #2
20101170:	1a50      	subs	r0, r2, r1
20101172:	1091      	asrs	r1, r2, #2
20101174:	68ba      	ldr	r2, [r7, #8]
20101176:	4488      	add	r8, r1
20101178:	1a9b      	subs	r3, r3, r2
2010117a:	e75b      	b.n	20101034 <svpwm+0xa8>
2010117c:	10c9      	asrs	r1, r1, #3
2010117e:	68fa      	ldr	r2, [r7, #12]
20101180:	1a41      	subs	r1, r0, r1
20101182:	10c0      	asrs	r0, r0, #3
20101184:	4480      	add	r8, r0
20101186:	1a9b      	subs	r3, r3, r2
20101188:	e763      	b.n	20101052 <svpwm+0xc6>
2010118a:	1100      	asrs	r0, r0, #4
2010118c:	693a      	ldr	r2, [r7, #16]
2010118e:	1a08      	subs	r0, r1, r0
20101190:	1109      	asrs	r1, r1, #4
20101192:	4488      	add	r8, r1
20101194:	1a9b      	subs	r3, r3, r2
20101196:	e76b      	b.n	20101070 <svpwm+0xe4>
20101198:	1149      	asrs	r1, r1, #5
2010119a:	1a42      	subs	r2, r0, r1
2010119c:	1140      	asrs	r0, r0, #5
2010119e:	0001      	movs	r1, r0
201011a0:	4691      	mov	r9, r2
201011a2:	697a      	ldr	r2, [r7, #20]
201011a4:	4441      	add	r1, r8
201011a6:	1a9b      	subs	r3, r3, r2
201011a8:	e771      	b.n	2010108e <svpwm+0x102>
201011aa:	464a      	mov	r2, r9
201011ac:	1a12      	subs	r2, r2, r0
201011ae:	4690      	mov	r8, r2
201011b0:	464a      	mov	r2, r9
201011b2:	1190      	asrs	r0, r2, #6
201011b4:	69ba      	ldr	r2, [r7, #24]
201011b6:	1841      	adds	r1, r0, r1
201011b8:	1a9b      	subs	r3, r3, r2
201011ba:	e777      	b.n	201010ac <svpwm+0x120>
201011bc:	4650      	mov	r0, sl
201011be:	5880      	ldr	r0, [r0, r2]
201011c0:	4a4a      	ldr	r2, [pc, #296]	; (201012ec <svpwm+0x360>)
201011c2:	1ad2      	subs	r2, r2, r3
201011c4:	3301      	adds	r3, #1
201011c6:	0592      	lsls	r2, r2, #22
201011c8:	33ff      	adds	r3, #255	; 0xff
201011ca:	0d12      	lsrs	r2, r2, #20
201011cc:	059b      	lsls	r3, r3, #22
201011ce:	5812      	ldr	r2, [r2, r0]
201011d0:	0d1b      	lsrs	r3, r3, #20
201011d2:	581b      	ldr	r3, [r3, r0]
201011d4:	434a      	muls	r2, r1
201011d6:	434b      	muls	r3, r1
201011d8:	1292      	asrs	r2, r2, #10
201011da:	1299      	asrs	r1, r3, #10
201011dc:	4253      	negs	r3, r2
201011de:	1a5b      	subs	r3, r3, r1
201011e0:	602b      	str	r3, [r5, #0]
201011e2:	1a53      	subs	r3, r2, r1
201011e4:	1851      	adds	r1, r2, r1
201011e6:	606b      	str	r3, [r5, #4]
201011e8:	60a9      	str	r1, [r5, #8]
201011ea:	e7a0      	b.n	2010112e <svpwm+0x1a2>
201011ec:	4650      	mov	r0, sl
201011ee:	5880      	ldr	r0, [r0, r2]
201011f0:	4a3f      	ldr	r2, [pc, #252]	; (201012f0 <svpwm+0x364>)
201011f2:	1ad2      	subs	r2, r2, r3
201011f4:	3356      	adds	r3, #86	; 0x56
201011f6:	0592      	lsls	r2, r2, #22
201011f8:	059b      	lsls	r3, r3, #22
201011fa:	0d12      	lsrs	r2, r2, #20
201011fc:	0d1b      	lsrs	r3, r3, #20
201011fe:	5816      	ldr	r6, [r2, r0]
20101200:	581b      	ldr	r3, [r3, r0]
20101202:	434e      	muls	r6, r1
20101204:	434b      	muls	r3, r1
20101206:	12b6      	asrs	r6, r6, #10
20101208:	1299      	asrs	r1, r3, #10
2010120a:	1b8b      	subs	r3, r1, r6
2010120c:	602b      	str	r3, [r5, #0]
2010120e:	4273      	negs	r3, r6
20101210:	1a5b      	subs	r3, r3, r1
20101212:	1871      	adds	r1, r6, r1
20101214:	606b      	str	r3, [r5, #4]
20101216:	60a9      	str	r1, [r5, #8]
20101218:	e789      	b.n	2010112e <svpwm+0x1a2>
2010121a:	4650      	mov	r0, sl
2010121c:	5886      	ldr	r6, [r0, r2]
2010121e:	4a35      	ldr	r2, [pc, #212]	; (201012f4 <svpwm+0x368>)
20101220:	1ad2      	subs	r2, r2, r3
20101222:	0592      	lsls	r2, r2, #22
20101224:	0d12      	lsrs	r2, r2, #20
20101226:	5990      	ldr	r0, [r2, r6]
20101228:	4a33      	ldr	r2, [pc, #204]	; (201012f8 <svpwm+0x36c>)
2010122a:	4348      	muls	r0, r1
2010122c:	4694      	mov	ip, r2
2010122e:	4463      	add	r3, ip
20101230:	059b      	lsls	r3, r3, #22
20101232:	0d1b      	lsrs	r3, r3, #20
20101234:	599b      	ldr	r3, [r3, r6]
20101236:	1280      	asrs	r0, r0, #10
20101238:	4359      	muls	r1, r3
2010123a:	1289      	asrs	r1, r1, #10
2010123c:	1a43      	subs	r3, r0, r1
2010123e:	602b      	str	r3, [r5, #0]
20101240:	1843      	adds	r3, r0, r1
20101242:	4240      	negs	r0, r0
20101244:	1a40      	subs	r0, r0, r1
20101246:	606b      	str	r3, [r5, #4]
20101248:	60a8      	str	r0, [r5, #8]
2010124a:	e770      	b.n	2010112e <svpwm+0x1a2>
2010124c:	4650      	mov	r0, sl
2010124e:	5880      	ldr	r0, [r0, r2]
20101250:	4a2a      	ldr	r2, [pc, #168]	; (201012fc <svpwm+0x370>)
20101252:	1ad2      	subs	r2, r2, r3
20101254:	33ac      	adds	r3, #172	; 0xac
20101256:	0592      	lsls	r2, r2, #22
20101258:	33ff      	adds	r3, #255	; 0xff
2010125a:	0d12      	lsrs	r2, r2, #20
2010125c:	059b      	lsls	r3, r3, #22
2010125e:	5816      	ldr	r6, [r2, r0]
20101260:	0d1b      	lsrs	r3, r3, #20
20101262:	581b      	ldr	r3, [r3, r0]
20101264:	434e      	muls	r6, r1
20101266:	4359      	muls	r1, r3
20101268:	12b6      	asrs	r6, r6, #10
2010126a:	1289      	asrs	r1, r1, #10
2010126c:	4273      	negs	r3, r6
2010126e:	1a5b      	subs	r3, r3, r1
20101270:	602b      	str	r3, [r5, #0]
20101272:	1873      	adds	r3, r6, r1
20101274:	1b89      	subs	r1, r1, r6
20101276:	606b      	str	r3, [r5, #4]
20101278:	60a9      	str	r1, [r5, #8]
2010127a:	e758      	b.n	2010112e <svpwm+0x1a2>
2010127c:	4642      	mov	r2, r8
2010127e:	11c9      	asrs	r1, r1, #7
20101280:	1a50      	subs	r0, r2, r1
20101282:	69f9      	ldr	r1, [r7, #28]
20101284:	1a5b      	subs	r3, r3, r1
20101286:	e71b      	b.n	201010c0 <svpwm+0x134>
20101288:	4650      	mov	r0, sl
2010128a:	5882      	ldr	r2, [r0, r2]
2010128c:	481c      	ldr	r0, [pc, #112]	; (20101300 <svpwm+0x374>)
2010128e:	1ac0      	subs	r0, r0, r3
20101290:	3b55      	subs	r3, #85	; 0x55
20101292:	0580      	lsls	r0, r0, #22
20101294:	059b      	lsls	r3, r3, #22
20101296:	0d00      	lsrs	r0, r0, #20
20101298:	0d1b      	lsrs	r3, r3, #20
2010129a:	589b      	ldr	r3, [r3, r2]
2010129c:	5880      	ldr	r0, [r0, r2]
2010129e:	4348      	muls	r0, r1
201012a0:	4359      	muls	r1, r3
201012a2:	1280      	asrs	r0, r0, #10
201012a4:	1289      	asrs	r1, r1, #10
201012a6:	1843      	adds	r3, r0, r1
201012a8:	602b      	str	r3, [r5, #0]
201012aa:	4243      	negs	r3, r0
201012ac:	1a5b      	subs	r3, r3, r1
201012ae:	1a41      	subs	r1, r0, r1
201012b0:	606b      	str	r3, [r5, #4]
201012b2:	60a9      	str	r1, [r5, #8]
201012b4:	e73b      	b.n	2010112e <svpwm+0x1a2>
201012b6:	2100      	movs	r1, #0
201012b8:	e703      	b.n	201010c2 <svpwm+0x136>
201012ba:	4648      	mov	r0, r9
201012bc:	2101      	movs	r1, #1
201012be:	e700      	b.n	201010c2 <svpwm+0x136>
201012c0:	2102      	movs	r1, #2
201012c2:	e6fe      	b.n	201010c2 <svpwm+0x136>
201012c4:	0008      	movs	r0, r1
201012c6:	2103      	movs	r1, #3
201012c8:	e6fb      	b.n	201010c2 <svpwm+0x136>
201012ca:	2104      	movs	r1, #4
201012cc:	e6f9      	b.n	201010c2 <svpwm+0x136>
201012ce:	4648      	mov	r0, r9
201012d0:	2105      	movs	r1, #5
201012d2:	e6f6      	b.n	201010c2 <svpwm+0x136>
201012d4:	4640      	mov	r0, r8
201012d6:	2106      	movs	r1, #6
201012d8:	e6f3      	b.n	201010c2 <svpwm+0x136>
201012da:	46c0      	nop			; (mov r8, r8)
201012dc:	000013ee 	.word	0x000013ee
201012e0:	ffeff05c 	.word	0xffeff05c
201012e4:	00000000 	.word	0x00000000
201012e8:	000007aa 	.word	0x000007aa
201012ec:	000009aa 	.word	0x000009aa
201012f0:	00000a54 	.word	0x00000a54
201012f4:	00000854 	.word	0x00000854
201012f8:	00000256 	.word	0x00000256
201012fc:	000008ff 	.word	0x000008ff
20101300:	00000aff 	.word	0x00000aff

20101304 <get_speed>:
20101304:	4a10      	ldr	r2, [pc, #64]	; (20101348 <get_speed+0x44>)
20101306:	b510      	push	{r4, lr}
20101308:	447a      	add	r2, pc
2010130a:	6813      	ldr	r3, [r2, #0]
2010130c:	6854      	ldr	r4, [r2, #4]
2010130e:	1ac3      	subs	r3, r0, r3
20101310:	6050      	str	r0, [r2, #4]
20101312:	6014      	str	r4, [r2, #0]
20101314:	17da      	asrs	r2, r3, #31
20101316:	1898      	adds	r0, r3, r2
20101318:	4050      	eors	r0, r2
2010131a:	22fa      	movs	r2, #250	; 0xfa
2010131c:	0092      	lsls	r2, r2, #2
2010131e:	4290      	cmp	r0, r2
20101320:	dd04      	ble.n	2010132c <get_speed+0x28>
20101322:	2b00      	cmp	r3, #0
20101324:	db0a      	blt.n	2010133c <get_speed+0x38>
20101326:	4a09      	ldr	r2, [pc, #36]	; (2010134c <get_speed+0x48>)
20101328:	4694      	mov	ip, r2
2010132a:	4463      	add	r3, ip
2010132c:	680a      	ldr	r2, [r1, #0]
2010132e:	4808      	ldr	r0, [pc, #32]	; (20101350 <get_speed+0x4c>)
20101330:	18d2      	adds	r2, r2, r3
20101332:	105b      	asrs	r3, r3, #1
20101334:	4343      	muls	r3, r0
20101336:	600a      	str	r2, [r1, #0]
20101338:	1318      	asrs	r0, r3, #12
2010133a:	bd10      	pop	{r4, pc}
2010133c:	2280      	movs	r2, #128	; 0x80
2010133e:	0152      	lsls	r2, r2, #5
20101340:	4694      	mov	ip, r2
20101342:	4463      	add	r3, ip
20101344:	e7f2      	b.n	2010132c <get_speed+0x28>
20101346:	46c0      	nop			; (mov r8, r8)
20101348:	ffefed18 	.word	0xffefed18
2010134c:	fffff000 	.word	0xfffff000
20101350:	0002ae7c 	.word	0x0002ae7c

20101354 <mfilter>:
20101354:	221f      	movs	r2, #31
20101356:	4908      	ldr	r1, [pc, #32]	; (20101378 <mfilter+0x24>)
20101358:	b510      	push	{r4, lr}
2010135a:	4479      	add	r1, pc
2010135c:	688b      	ldr	r3, [r1, #8]
2010135e:	3301      	adds	r3, #1
20101360:	4013      	ands	r3, r2
20101362:	608b      	str	r3, [r1, #8]
20101364:	009b      	lsls	r3, r3, #2
20101366:	18cb      	adds	r3, r1, r3
20101368:	68ca      	ldr	r2, [r1, #12]
2010136a:	691c      	ldr	r4, [r3, #16]
2010136c:	6118      	str	r0, [r3, #16]
2010136e:	1b12      	subs	r2, r2, r4
20101370:	1812      	adds	r2, r2, r0
20101372:	1150      	asrs	r0, r2, #5
20101374:	60ca      	str	r2, [r1, #12]
20101376:	bd10      	pop	{r4, pc}
20101378:	ffefecc6 	.word	0xffefecc6

2010137c <__gnu_thumb1_case_uqi>:
2010137c:	b402      	push	{r1}
2010137e:	4671      	mov	r1, lr
20101380:	0849      	lsrs	r1, r1, #1
20101382:	0049      	lsls	r1, r1, #1
20101384:	5c09      	ldrb	r1, [r1, r0]
20101386:	0049      	lsls	r1, r1, #1
20101388:	448e      	add	lr, r1
2010138a:	bc02      	pop	{r1}
2010138c:	4770      	bx	lr
2010138e:	46c0      	nop			; (mov r8, r8)
