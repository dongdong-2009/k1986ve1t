
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b590      	push	{r4, r7, lr}
20100002:	b0a7      	sub	sp, #156	; 0x9c
20100004:	af00      	add	r7, sp, #0
20100006:	4c2e      	ldr	r4, [pc, #184]	; (201000c0 <main+0xc0>)
20100008:	447c      	add	r4, pc
2010000a:	2300      	movs	r3, #0
2010000c:	2294      	movs	r2, #148	; 0x94
2010000e:	18ba      	adds	r2, r7, r2
20100010:	6013      	str	r3, [r2, #0]
20100012:	2300      	movs	r3, #0
20100014:	67fb      	str	r3, [r7, #124]	; 0x7c
20100016:	2300      	movs	r3, #0
20100018:	67bb      	str	r3, [r7, #120]	; 0x78
2010001a:	2300      	movs	r3, #0
2010001c:	2290      	movs	r2, #144	; 0x90
2010001e:	18ba      	adds	r2, r7, r2
20100020:	6013      	str	r3, [r2, #0]
20100022:	2300      	movs	r3, #0
20100024:	228c      	movs	r2, #140	; 0x8c
20100026:	18ba      	adds	r2, r7, r2
20100028:	6013      	str	r3, [r2, #0]
2010002a:	2300      	movs	r3, #0
2010002c:	2288      	movs	r2, #136	; 0x88
2010002e:	18ba      	adds	r2, r7, r2
20100030:	6013      	str	r3, [r2, #0]
20100032:	2300      	movs	r3, #0
20100034:	2284      	movs	r2, #132	; 0x84
20100036:	18ba      	adds	r2, r7, r2
20100038:	6013      	str	r3, [r2, #0]
2010003a:	23fa      	movs	r3, #250	; 0xfa
2010003c:	009b      	lsls	r3, r3, #2
2010003e:	677b      	str	r3, [r7, #116]	; 0x74
20100040:	2300      	movs	r3, #0
20100042:	603b      	str	r3, [r7, #0]
20100044:	f000 fce2 	bl	20100a0c <SystemInit>
20100048:	2396      	movs	r3, #150	; 0x96
2010004a:	009a      	lsls	r2, r3, #2
2010004c:	2334      	movs	r3, #52	; 0x34
2010004e:	18fb      	adds	r3, r7, r3
20100050:	21c8      	movs	r1, #200	; 0xc8
20100052:	0018      	movs	r0, r3
20100054:	f000 fd22 	bl	20100a9c <reg_init>
20100058:	2396      	movs	r3, #150	; 0x96
2010005a:	009a      	lsls	r2, r3, #2
2010005c:	2324      	movs	r3, #36	; 0x24
2010005e:	18fb      	adds	r3, r7, r3
20100060:	21c8      	movs	r1, #200	; 0xc8
20100062:	0018      	movs	r0, r3
20100064:	f000 fd1a 	bl	20100a9c <reg_init>
20100068:	23fa      	movs	r3, #250	; 0xfa
2010006a:	011a      	lsls	r2, r3, #4
2010006c:	2314      	movs	r3, #20
2010006e:	18fb      	adds	r3, r7, r3
20100070:	2100      	movs	r1, #0
20100072:	0018      	movs	r0, r3
20100074:	f000 fd12 	bl	20100a9c <reg_init>
20100078:	4a12      	ldr	r2, [pc, #72]	; (201000c4 <main+0xc4>)
2010007a:	1d3b      	adds	r3, r7, #4
2010007c:	2100      	movs	r1, #0
2010007e:	0018      	movs	r0, r3
20100080:	f000 fd0c 	bl	20100a9c <reg_init>
20100084:	4b10      	ldr	r3, [pc, #64]	; (201000c8 <main+0xc8>)
20100086:	447b      	add	r3, pc
20100088:	2200      	movs	r2, #0
2010008a:	601a      	str	r2, [r3, #0]
2010008c:	4b0f      	ldr	r3, [pc, #60]	; (201000cc <main+0xcc>)
2010008e:	447b      	add	r3, pc
20100090:	2200      	movs	r2, #0
20100092:	601a      	str	r2, [r3, #0]
20100094:	2300      	movs	r3, #0
20100096:	2290      	movs	r2, #144	; 0x90
20100098:	18ba      	adds	r2, r7, r2
2010009a:	6013      	str	r3, [r2, #0]
2010009c:	2300      	movs	r3, #0
2010009e:	228c      	movs	r2, #140	; 0x8c
201000a0:	18ba      	adds	r2, r7, r2
201000a2:	6013      	str	r3, [r2, #0]
201000a4:	4b0a      	ldr	r3, [pc, #40]	; (201000d0 <main+0xd0>)
201000a6:	447b      	add	r3, pc
201000a8:	2200      	movs	r2, #0
201000aa:	601a      	str	r2, [r3, #0]
201000ac:	4b09      	ldr	r3, [pc, #36]	; (201000d4 <main+0xd4>)
201000ae:	447b      	add	r3, pc
201000b0:	2200      	movs	r2, #0
201000b2:	601a      	str	r2, [r3, #0]
201000b4:	2300      	movs	r3, #0
201000b6:	2294      	movs	r2, #148	; 0x94
201000b8:	18ba      	adds	r2, r7, r2
201000ba:	6013      	str	r3, [r2, #0]
201000bc:	e05c      	b.n	20100178 <main+0x178>
201000be:	46c0      	nop			; (mov r8, r8)
201000c0:	fff00080 	.word	0xfff00080
201000c4:	00001770 	.word	0x00001770
201000c8:	fff00016 	.word	0xfff00016
201000cc:	fff00022 	.word	0xfff00022
201000d0:	ffeffffe 	.word	0xffeffffe
201000d4:	ffeffffa 	.word	0xffeffffa
201000d8:	f000 fcac 	bl	20100a34 <timer_wait>
201000dc:	f001 f93e 	bl	2010135c <adc_dma_start>
201000e0:	4bde      	ldr	r3, [pc, #888]	; (2010045c <main+0x45c>)
201000e2:	4adf      	ldr	r2, [pc, #892]	; (20100460 <main+0x460>)
201000e4:	609a      	str	r2, [r3, #8]
201000e6:	f001 f94d 	bl	20101384 <adc_dma_wait>
201000ea:	4bde      	ldr	r3, [pc, #888]	; (20100464 <main+0x464>)
201000ec:	58e3      	ldr	r3, [r4, r3]
201000ee:	685b      	ldr	r3, [r3, #4]
201000f0:	051b      	lsls	r3, r3, #20
201000f2:	0d1a      	lsrs	r2, r3, #20
201000f4:	2390      	movs	r3, #144	; 0x90
201000f6:	18fb      	adds	r3, r7, r3
201000f8:	681b      	ldr	r3, [r3, #0]
201000fa:	18d3      	adds	r3, r2, r3
201000fc:	2290      	movs	r2, #144	; 0x90
201000fe:	18ba      	adds	r2, r7, r2
20100100:	6013      	str	r3, [r2, #0]
20100102:	4bd8      	ldr	r3, [pc, #864]	; (20100464 <main+0x464>)
20100104:	58e3      	ldr	r3, [r4, r3]
20100106:	689b      	ldr	r3, [r3, #8]
20100108:	051b      	lsls	r3, r3, #20
2010010a:	0d1a      	lsrs	r2, r3, #20
2010010c:	238c      	movs	r3, #140	; 0x8c
2010010e:	18fb      	adds	r3, r7, r3
20100110:	681b      	ldr	r3, [r3, #0]
20100112:	18d3      	adds	r3, r2, r3
20100114:	228c      	movs	r2, #140	; 0x8c
20100116:	18ba      	adds	r2, r7, r2
20100118:	6013      	str	r3, [r2, #0]
2010011a:	4bd2      	ldr	r3, [pc, #840]	; (20100464 <main+0x464>)
2010011c:	58e3      	ldr	r3, [r4, r3]
2010011e:	68db      	ldr	r3, [r3, #12]
20100120:	051b      	lsls	r3, r3, #20
20100122:	0d1a      	lsrs	r2, r3, #20
20100124:	4bd0      	ldr	r3, [pc, #832]	; (20100468 <main+0x468>)
20100126:	447b      	add	r3, pc
20100128:	681b      	ldr	r3, [r3, #0]
2010012a:	18d3      	adds	r3, r2, r3
2010012c:	001a      	movs	r2, r3
2010012e:	4bcf      	ldr	r3, [pc, #828]	; (2010046c <main+0x46c>)
20100130:	447b      	add	r3, pc
20100132:	601a      	str	r2, [r3, #0]
20100134:	4bc9      	ldr	r3, [pc, #804]	; (2010045c <main+0x45c>)
20100136:	689b      	ldr	r3, [r3, #8]
20100138:	051b      	lsls	r3, r3, #20
2010013a:	0d1b      	lsrs	r3, r3, #20
2010013c:	0018      	movs	r0, r3
2010013e:	f000 fc4d 	bl	201009dc <g2b>
20100142:	0002      	movs	r2, r0
20100144:	4bca      	ldr	r3, [pc, #808]	; (20100470 <main+0x470>)
20100146:	447b      	add	r3, pc
20100148:	681b      	ldr	r3, [r3, #0]
2010014a:	18d3      	adds	r3, r2, r3
2010014c:	001a      	movs	r2, r3
2010014e:	4bc9      	ldr	r3, [pc, #804]	; (20100474 <main+0x474>)
20100150:	447b      	add	r3, pc
20100152:	601a      	str	r2, [r3, #0]
20100154:	4bc3      	ldr	r3, [pc, #780]	; (20100464 <main+0x464>)
20100156:	58e3      	ldr	r3, [r4, r3]
20100158:	681b      	ldr	r3, [r3, #0]
2010015a:	051b      	lsls	r3, r3, #20
2010015c:	0d1a      	lsrs	r2, r3, #20
2010015e:	0013      	movs	r3, r2
20100160:	009b      	lsls	r3, r3, #2
20100162:	189b      	adds	r3, r3, r2
20100164:	0018      	movs	r0, r3
20100166:	f001 f9d7 	bl	20101518 <mfilter>
2010016a:	2394      	movs	r3, #148	; 0x94
2010016c:	18fb      	adds	r3, r7, r3
2010016e:	681b      	ldr	r3, [r3, #0]
20100170:	3301      	adds	r3, #1
20100172:	2294      	movs	r2, #148	; 0x94
20100174:	18ba      	adds	r2, r7, r2
20100176:	6013      	str	r3, [r2, #0]
20100178:	2394      	movs	r3, #148	; 0x94
2010017a:	18fb      	adds	r3, r7, r3
2010017c:	681b      	ldr	r3, [r3, #0]
2010017e:	4abe      	ldr	r2, [pc, #760]	; (20100478 <main+0x478>)
20100180:	4293      	cmp	r3, r2
20100182:	dda9      	ble.n	201000d8 <main+0xd8>
20100184:	2390      	movs	r3, #144	; 0x90
20100186:	18fb      	adds	r3, r7, r3
20100188:	681b      	ldr	r3, [r3, #0]
2010018a:	129b      	asrs	r3, r3, #10
2010018c:	2290      	movs	r2, #144	; 0x90
2010018e:	18ba      	adds	r2, r7, r2
20100190:	6013      	str	r3, [r2, #0]
20100192:	238c      	movs	r3, #140	; 0x8c
20100194:	18fb      	adds	r3, r7, r3
20100196:	681b      	ldr	r3, [r3, #0]
20100198:	129b      	asrs	r3, r3, #10
2010019a:	228c      	movs	r2, #140	; 0x8c
2010019c:	18ba      	adds	r2, r7, r2
2010019e:	6013      	str	r3, [r2, #0]
201001a0:	4bb6      	ldr	r3, [pc, #728]	; (2010047c <main+0x47c>)
201001a2:	447b      	add	r3, pc
201001a4:	681b      	ldr	r3, [r3, #0]
201001a6:	129a      	asrs	r2, r3, #10
201001a8:	4bb5      	ldr	r3, [pc, #724]	; (20100480 <main+0x480>)
201001aa:	447b      	add	r3, pc
201001ac:	601a      	str	r2, [r3, #0]
201001ae:	4bb5      	ldr	r3, [pc, #724]	; (20100484 <main+0x484>)
201001b0:	447b      	add	r3, pc
201001b2:	681a      	ldr	r2, [r3, #0]
201001b4:	4bb4      	ldr	r3, [pc, #720]	; (20100488 <main+0x488>)
201001b6:	447b      	add	r3, pc
201001b8:	601a      	str	r2, [r3, #0]
201001ba:	4bb4      	ldr	r3, [pc, #720]	; (2010048c <main+0x48c>)
201001bc:	447b      	add	r3, pc
201001be:	681b      	ldr	r3, [r3, #0]
201001c0:	129a      	asrs	r2, r3, #10
201001c2:	4bb3      	ldr	r3, [pc, #716]	; (20100490 <main+0x490>)
201001c4:	447b      	add	r3, pc
201001c6:	601a      	str	r2, [r3, #0]
201001c8:	f000 fc34 	bl	20100a34 <timer_wait>
201001cc:	4bb1      	ldr	r3, [pc, #708]	; (20100494 <main+0x494>)
201001ce:	4ab1      	ldr	r2, [pc, #708]	; (20100494 <main+0x494>)
201001d0:	6812      	ldr	r2, [r2, #0]
201001d2:	2140      	movs	r1, #64	; 0x40
201001d4:	438a      	bics	r2, r1
201001d6:	601a      	str	r2, [r3, #0]
201001d8:	f001 f8c0 	bl	2010135c <adc_dma_start>
201001dc:	4b9f      	ldr	r3, [pc, #636]	; (2010045c <main+0x45c>)
201001de:	4aa0      	ldr	r2, [pc, #640]	; (20100460 <main+0x460>)
201001e0:	609a      	str	r2, [r3, #8]
201001e2:	f001 f8cf 	bl	20101384 <adc_dma_wait>
201001e6:	4bab      	ldr	r3, [pc, #684]	; (20100494 <main+0x494>)
201001e8:	4aaa      	ldr	r2, [pc, #680]	; (20100494 <main+0x494>)
201001ea:	6812      	ldr	r2, [r2, #0]
201001ec:	2140      	movs	r1, #64	; 0x40
201001ee:	430a      	orrs	r2, r1
201001f0:	601a      	str	r2, [r3, #0]
201001f2:	4b9c      	ldr	r3, [pc, #624]	; (20100464 <main+0x464>)
201001f4:	58e3      	ldr	r3, [r4, r3]
201001f6:	681b      	ldr	r3, [r3, #0]
201001f8:	051b      	lsls	r3, r3, #20
201001fa:	0d1a      	lsrs	r2, r3, #20
201001fc:	0013      	movs	r3, r2
201001fe:	009b      	lsls	r3, r3, #2
20100200:	189b      	adds	r3, r3, r2
20100202:	0018      	movs	r0, r3
20100204:	f001 f988 	bl	20101518 <mfilter>
20100208:	0003      	movs	r3, r0
2010020a:	2294      	movs	r2, #148	; 0x94
2010020c:	18ba      	adds	r2, r7, r2
2010020e:	6013      	str	r3, [r2, #0]
20100210:	4ba1      	ldr	r3, [pc, #644]	; (20100498 <main+0x498>)
20100212:	447b      	add	r3, pc
20100214:	2294      	movs	r2, #148	; 0x94
20100216:	18ba      	adds	r2, r7, r2
20100218:	6812      	ldr	r2, [r2, #0]
2010021a:	601a      	str	r2, [r3, #0]
2010021c:	2394      	movs	r3, #148	; 0x94
2010021e:	18fb      	adds	r3, r7, r3
20100220:	681a      	ldr	r2, [r3, #0]
20100222:	0013      	movs	r3, r2
20100224:	009b      	lsls	r3, r3, #2
20100226:	189b      	adds	r3, r3, r2
20100228:	005b      	lsls	r3, r3, #1
2010022a:	189b      	adds	r3, r3, r2
2010022c:	119b      	asrs	r3, r3, #6
2010022e:	1d5a      	adds	r2, r3, #5
20100230:	32ff      	adds	r2, #255	; 0xff
20100232:	4b9a      	ldr	r3, [pc, #616]	; (2010049c <main+0x49c>)
20100234:	447b      	add	r3, pc
20100236:	601a      	str	r2, [r3, #0]
20100238:	4b99      	ldr	r3, [pc, #612]	; (201004a0 <main+0x4a0>)
2010023a:	447b      	add	r3, pc
2010023c:	681a      	ldr	r2, [r3, #0]
2010023e:	23c8      	movs	r3, #200	; 0xc8
20100240:	011b      	lsls	r3, r3, #4
20100242:	429a      	cmp	r2, r3
20100244:	dd05      	ble.n	20100252 <main+0x252>
20100246:	4b97      	ldr	r3, [pc, #604]	; (201004a4 <main+0x4a4>)
20100248:	447b      	add	r3, pc
2010024a:	22c8      	movs	r2, #200	; 0xc8
2010024c:	0112      	lsls	r2, r2, #4
2010024e:	601a      	str	r2, [r3, #0]
20100250:	46c0      	nop			; (mov r8, r8)
20100252:	4b95      	ldr	r3, [pc, #596]	; (201004a8 <main+0x4a8>)
20100254:	447b      	add	r3, pc
20100256:	681a      	ldr	r2, [r3, #0]
20100258:	23f4      	movs	r3, #244	; 0xf4
2010025a:	33ff      	adds	r3, #255	; 0xff
2010025c:	429a      	cmp	r2, r3
2010025e:	dc05      	bgt.n	2010026c <main+0x26c>
20100260:	4b92      	ldr	r3, [pc, #584]	; (201004ac <main+0x4ac>)
20100262:	447b      	add	r3, pc
20100264:	22fa      	movs	r2, #250	; 0xfa
20100266:	0052      	lsls	r2, r2, #1
20100268:	601a      	str	r2, [r3, #0]
2010026a:	46c0      	nop			; (mov r8, r8)
2010026c:	4b7d      	ldr	r3, [pc, #500]	; (20100464 <main+0x464>)
2010026e:	58e3      	ldr	r3, [r4, r3]
20100270:	685b      	ldr	r3, [r3, #4]
20100272:	051b      	lsls	r3, r3, #20
20100274:	0d1a      	lsrs	r2, r3, #20
20100276:	2390      	movs	r3, #144	; 0x90
20100278:	18fb      	adds	r3, r7, r3
2010027a:	681b      	ldr	r3, [r3, #0]
2010027c:	1ad3      	subs	r3, r2, r3
2010027e:	673b      	str	r3, [r7, #112]	; 0x70
20100280:	4b78      	ldr	r3, [pc, #480]	; (20100464 <main+0x464>)
20100282:	58e3      	ldr	r3, [r4, r3]
20100284:	689b      	ldr	r3, [r3, #8]
20100286:	051b      	lsls	r3, r3, #20
20100288:	0d1a      	lsrs	r2, r3, #20
2010028a:	238c      	movs	r3, #140	; 0x8c
2010028c:	18fb      	adds	r3, r7, r3
2010028e:	681b      	ldr	r3, [r3, #0]
20100290:	1ad3      	subs	r3, r2, r3
20100292:	66fb      	str	r3, [r7, #108]	; 0x6c
20100294:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20100296:	425a      	negs	r2, r3
20100298:	6efb      	ldr	r3, [r7, #108]	; 0x6c
2010029a:	1ad3      	subs	r3, r2, r3
2010029c:	66bb      	str	r3, [r7, #104]	; 0x68
2010029e:	4b71      	ldr	r3, [pc, #452]	; (20100464 <main+0x464>)
201002a0:	58e3      	ldr	r3, [r4, r3]
201002a2:	68db      	ldr	r3, [r3, #12]
201002a4:	051b      	lsls	r3, r3, #20
201002a6:	0d1a      	lsrs	r2, r3, #20
201002a8:	4b81      	ldr	r3, [pc, #516]	; (201004b0 <main+0x4b0>)
201002aa:	447b      	add	r3, pc
201002ac:	601a      	str	r2, [r3, #0]
201002ae:	4b6b      	ldr	r3, [pc, #428]	; (2010045c <main+0x45c>)
201002b0:	689b      	ldr	r3, [r3, #8]
201002b2:	051b      	lsls	r3, r3, #20
201002b4:	0d1b      	lsrs	r3, r3, #20
201002b6:	0018      	movs	r0, r3
201002b8:	f000 fb90 	bl	201009dc <g2b>
201002bc:	0003      	movs	r3, r0
201002be:	667b      	str	r3, [r7, #100]	; 0x64
201002c0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
201002c2:	059b      	lsls	r3, r3, #22
201002c4:	0d9b      	lsrs	r3, r3, #22
201002c6:	67bb      	str	r3, [r7, #120]	; 0x78
201002c8:	4b7a      	ldr	r3, [pc, #488]	; (201004b4 <main+0x4b4>)
201002ca:	6e7a      	ldr	r2, [r7, #100]	; 0x64
201002cc:	605a      	str	r2, [r3, #4]
201002ce:	2384      	movs	r3, #132	; 0x84
201002d0:	18fb      	adds	r3, r7, r3
201002d2:	681b      	ldr	r3, [r3, #0]
201002d4:	3301      	adds	r3, #1
201002d6:	2284      	movs	r2, #132	; 0x84
201002d8:	18ba      	adds	r2, r7, r2
201002da:	6013      	str	r3, [r2, #0]
201002dc:	2384      	movs	r3, #132	; 0x84
201002de:	18fb      	adds	r3, r7, r3
201002e0:	681b      	ldr	r3, [r3, #0]
201002e2:	2207      	movs	r2, #7
201002e4:	4013      	ands	r3, r2
201002e6:	d14a      	bne.n	2010037e <main+0x37e>
201002e8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
201002ea:	003a      	movs	r2, r7
201002ec:	0011      	movs	r1, r2
201002ee:	0018      	movs	r0, r3
201002f0:	f000 ffaa 	bl	20101248 <get_speed>
201002f4:	0003      	movs	r3, r0
201002f6:	663b      	str	r3, [r7, #96]	; 0x60
201002f8:	4b6f      	ldr	r3, [pc, #444]	; (201004b8 <main+0x4b8>)
201002fa:	447b      	add	r3, pc
201002fc:	681a      	ldr	r2, [r3, #0]
201002fe:	683b      	ldr	r3, [r7, #0]
20100300:	1ad1      	subs	r1, r2, r3
20100302:	1d3b      	adds	r3, r7, #4
20100304:	2200      	movs	r2, #0
20100306:	0018      	movs	r0, r3
20100308:	f000 fbce 	bl	20100aa8 <reg_update>
2010030c:	1d3b      	adds	r3, r7, #4
2010030e:	68db      	ldr	r3, [r3, #12]
20100310:	131b      	asrs	r3, r3, #12
20100312:	677b      	str	r3, [r7, #116]	; 0x74
20100314:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20100316:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20100318:	1ad1      	subs	r1, r2, r3
2010031a:	2314      	movs	r3, #20
2010031c:	18fb      	adds	r3, r7, r3
2010031e:	2200      	movs	r2, #0
20100320:	0018      	movs	r0, r3
20100322:	f000 fbc1 	bl	20100aa8 <reg_update>
20100326:	2314      	movs	r3, #20
20100328:	18fb      	adds	r3, r7, r3
2010032a:	68db      	ldr	r3, [r3, #12]
2010032c:	131b      	asrs	r3, r3, #12
2010032e:	2280      	movs	r2, #128	; 0x80
20100330:	18ba      	adds	r2, r7, r2
20100332:	6013      	str	r3, [r2, #0]
20100334:	2380      	movs	r3, #128	; 0x80
20100336:	18fb      	adds	r3, r7, r3
20100338:	681a      	ldr	r2, [r3, #0]
2010033a:	23fa      	movs	r3, #250	; 0xfa
2010033c:	009b      	lsls	r3, r3, #2
2010033e:	429a      	cmp	r2, r3
20100340:	dd04      	ble.n	2010034c <main+0x34c>
20100342:	23fa      	movs	r3, #250	; 0xfa
20100344:	009b      	lsls	r3, r3, #2
20100346:	2280      	movs	r2, #128	; 0x80
20100348:	18ba      	adds	r2, r7, r2
2010034a:	6013      	str	r3, [r2, #0]
2010034c:	2380      	movs	r3, #128	; 0x80
2010034e:	18fb      	adds	r3, r7, r3
20100350:	681b      	ldr	r3, [r3, #0]
20100352:	4a5a      	ldr	r2, [pc, #360]	; (201004bc <main+0x4bc>)
20100354:	4293      	cmp	r3, r2
20100356:	da03      	bge.n	20100360 <main+0x360>
20100358:	4b58      	ldr	r3, [pc, #352]	; (201004bc <main+0x4bc>)
2010035a:	2280      	movs	r2, #128	; 0x80
2010035c:	18ba      	adds	r2, r7, r2
2010035e:	6013      	str	r3, [r2, #0]
20100360:	4b57      	ldr	r3, [pc, #348]	; (201004c0 <main+0x4c0>)
20100362:	447b      	add	r3, pc
20100364:	681a      	ldr	r2, [r3, #0]
20100366:	4b57      	ldr	r3, [pc, #348]	; (201004c4 <main+0x4c4>)
20100368:	447b      	add	r3, pc
2010036a:	681b      	ldr	r3, [r3, #0]
2010036c:	1ad2      	subs	r2, r2, r3
2010036e:	0013      	movs	r3, r2
20100370:	00db      	lsls	r3, r3, #3
20100372:	1a9b      	subs	r3, r3, r2
20100374:	00da      	lsls	r2, r3, #3
20100376:	1ad2      	subs	r2, r2, r3
20100378:	4b53      	ldr	r3, [pc, #332]	; (201004c8 <main+0x4c8>)
2010037a:	447b      	add	r3, pc
2010037c:	601a      	str	r2, [r3, #0]
2010037e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20100380:	33fa      	adds	r3, #250	; 0xfa
20100382:	059b      	lsls	r3, r3, #22
20100384:	0d9b      	lsrs	r3, r3, #22
20100386:	67bb      	str	r3, [r7, #120]	; 0x78
20100388:	2344      	movs	r3, #68	; 0x44
2010038a:	18fb      	adds	r3, r7, r3
2010038c:	6f3a      	ldr	r2, [r7, #112]	; 0x70
2010038e:	601a      	str	r2, [r3, #0]
20100390:	2344      	movs	r3, #68	; 0x44
20100392:	18fb      	adds	r3, r7, r3
20100394:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100396:	605a      	str	r2, [r3, #4]
20100398:	2344      	movs	r3, #68	; 0x44
2010039a:	18fb      	adds	r3, r7, r3
2010039c:	6efa      	ldr	r2, [r7, #108]	; 0x6c
2010039e:	609a      	str	r2, [r3, #8]
201003a0:	6fba      	ldr	r2, [r7, #120]	; 0x78
201003a2:	2350      	movs	r3, #80	; 0x50
201003a4:	18f9      	adds	r1, r7, r3
201003a6:	2344      	movs	r3, #68	; 0x44
201003a8:	18fb      	adds	r3, r7, r3
201003aa:	0018      	movs	r0, r3
201003ac:	f001 f840 	bl	20101430 <abc_to_dq>
201003b0:	2350      	movs	r3, #80	; 0x50
201003b2:	18fb      	adds	r3, r7, r3
201003b4:	681b      	ldr	r3, [r3, #0]
201003b6:	425b      	negs	r3, r3
201003b8:	65fb      	str	r3, [r7, #92]	; 0x5c
201003ba:	2350      	movs	r3, #80	; 0x50
201003bc:	18fb      	adds	r3, r7, r3
201003be:	685b      	ldr	r3, [r3, #4]
201003c0:	2280      	movs	r2, #128	; 0x80
201003c2:	18ba      	adds	r2, r7, r2
201003c4:	6812      	ldr	r2, [r2, #0]
201003c6:	1ad3      	subs	r3, r2, r3
201003c8:	65bb      	str	r3, [r7, #88]	; 0x58
201003ca:	2388      	movs	r3, #136	; 0x88
201003cc:	18fb      	adds	r3, r7, r3
201003ce:	681a      	ldr	r2, [r3, #0]
201003d0:	6df9      	ldr	r1, [r7, #92]	; 0x5c
201003d2:	2334      	movs	r3, #52	; 0x34
201003d4:	18fb      	adds	r3, r7, r3
201003d6:	0018      	movs	r0, r3
201003d8:	f000 fb66 	bl	20100aa8 <reg_update>
201003dc:	2388      	movs	r3, #136	; 0x88
201003de:	18fb      	adds	r3, r7, r3
201003e0:	681a      	ldr	r2, [r3, #0]
201003e2:	6db9      	ldr	r1, [r7, #88]	; 0x58
201003e4:	2324      	movs	r3, #36	; 0x24
201003e6:	18fb      	adds	r3, r7, r3
201003e8:	0018      	movs	r0, r3
201003ea:	f000 fb5d 	bl	20100aa8 <reg_update>
201003ee:	2334      	movs	r3, #52	; 0x34
201003f0:	18fb      	adds	r3, r7, r3
201003f2:	68db      	ldr	r3, [r3, #12]
201003f4:	109a      	asrs	r2, r3, #2
201003f6:	2350      	movs	r3, #80	; 0x50
201003f8:	18fb      	adds	r3, r7, r3
201003fa:	601a      	str	r2, [r3, #0]
201003fc:	2324      	movs	r3, #36	; 0x24
201003fe:	18fb      	adds	r3, r7, r3
20100400:	68db      	ldr	r3, [r3, #12]
20100402:	109a      	asrs	r2, r3, #2
20100404:	2350      	movs	r3, #80	; 0x50
20100406:	18fb      	adds	r3, r7, r3
20100408:	605a      	str	r2, [r3, #4]
2010040a:	6fba      	ldr	r2, [r7, #120]	; 0x78
2010040c:	2350      	movs	r3, #80	; 0x50
2010040e:	18f9      	adds	r1, r7, r3
20100410:	2344      	movs	r3, #68	; 0x44
20100412:	18fb      	adds	r3, r7, r3
20100414:	0018      	movs	r0, r3
20100416:	f000 fc31 	bl	20100c7c <sinpwm>
2010041a:	0003      	movs	r3, r0
2010041c:	2288      	movs	r2, #136	; 0x88
2010041e:	18ba      	adds	r2, r7, r2
20100420:	6013      	str	r3, [r2, #0]
20100422:	4a2a      	ldr	r2, [pc, #168]	; (201004cc <main+0x4cc>)
20100424:	2344      	movs	r3, #68	; 0x44
20100426:	18fb      	adds	r3, r7, r3
20100428:	681b      	ldr	r3, [r3, #0]
2010042a:	2180      	movs	r1, #128	; 0x80
2010042c:	0089      	lsls	r1, r1, #2
2010042e:	468c      	mov	ip, r1
20100430:	4463      	add	r3, ip
20100432:	6113      	str	r3, [r2, #16]
20100434:	4a25      	ldr	r2, [pc, #148]	; (201004cc <main+0x4cc>)
20100436:	2344      	movs	r3, #68	; 0x44
20100438:	18fb      	adds	r3, r7, r3
2010043a:	685b      	ldr	r3, [r3, #4]
2010043c:	2180      	movs	r1, #128	; 0x80
2010043e:	0089      	lsls	r1, r1, #2
20100440:	468c      	mov	ip, r1
20100442:	4463      	add	r3, ip
20100444:	6153      	str	r3, [r2, #20]
20100446:	4a21      	ldr	r2, [pc, #132]	; (201004cc <main+0x4cc>)
20100448:	2344      	movs	r3, #68	; 0x44
2010044a:	18fb      	adds	r3, r7, r3
2010044c:	689b      	ldr	r3, [r3, #8]
2010044e:	2180      	movs	r1, #128	; 0x80
20100450:	0089      	lsls	r1, r1, #2
20100452:	468c      	mov	ip, r1
20100454:	4463      	add	r3, ip
20100456:	6193      	str	r3, [r2, #24]
20100458:	e6b6      	b.n	201001c8 <main+0x1c8>
2010045a:	46c0      	nop			; (mov r8, r8)
2010045c:	400a0000 	.word	0x400a0000
20100460:	00000555 	.word	0x00000555
20100464:	00000004 	.word	0x00000004
20100468:	ffefff7e 	.word	0xffefff7e
2010046c:	ffefff74 	.word	0xffefff74
20100470:	ffefff62 	.word	0xffefff62
20100474:	ffefff58 	.word	0xffefff58
20100478:	000003ff 	.word	0x000003ff
2010047c:	ffefff02 	.word	0xffefff02
20100480:	ffeffefa 	.word	0xffeffefa
20100484:	ffeffef4 	.word	0xffeffef4
20100488:	ffeffeea 	.word	0xffeffeea
2010048c:	ffeffeec 	.word	0xffeffeec
20100490:	ffeffee4 	.word	0xffeffee4
20100494:	400b8000 	.word	0x400b8000
20100498:	ffeffea2 	.word	0xffeffea2
2010049c:	ffeffe6c 	.word	0xffeffe6c
201004a0:	ffeffe66 	.word	0xffeffe66
201004a4:	ffeffe58 	.word	0xffeffe58
201004a8:	ffeffe4c 	.word	0xffeffe4c
201004ac:	ffeffe3e 	.word	0xffeffe3e
201004b0:	ffeffe02 	.word	0xffeffe02
201004b4:	40090000 	.word	0x40090000
201004b8:	ffeffda2 	.word	0xffeffda2
201004bc:	fffffc18 	.word	0xfffffc18
201004c0:	ffeffd3e 	.word	0xffeffd3e
201004c4:	ffeffd3c 	.word	0xffeffd3c
201004c8:	ffeffd22 	.word	0xffeffd22
201004cc:	40098000 	.word	0x40098000

201004d0 <sleep>:
201004d0:	b580      	push	{r7, lr}
201004d2:	b084      	sub	sp, #16
201004d4:	af00      	add	r7, sp, #0
201004d6:	6078      	str	r0, [r7, #4]
201004d8:	2300      	movs	r3, #0
201004da:	60fb      	str	r3, [r7, #12]
201004dc:	e00b      	b.n	201004f6 <sleep+0x26>
201004de:	46c0      	nop			; (mov r8, r8)
201004e0:	4b09      	ldr	r3, [pc, #36]	; (20100508 <sleep+0x38>)
201004e2:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201004e4:	2202      	movs	r2, #2
201004e6:	4013      	ands	r3, r2
201004e8:	d0fa      	beq.n	201004e0 <sleep+0x10>
201004ea:	4b07      	ldr	r3, [pc, #28]	; (20100508 <sleep+0x38>)
201004ec:	2200      	movs	r2, #0
201004ee:	655a      	str	r2, [r3, #84]	; 0x54
201004f0:	68fb      	ldr	r3, [r7, #12]
201004f2:	3301      	adds	r3, #1
201004f4:	60fb      	str	r3, [r7, #12]
201004f6:	68fa      	ldr	r2, [r7, #12]
201004f8:	687b      	ldr	r3, [r7, #4]
201004fa:	429a      	cmp	r2, r3
201004fc:	d3ef      	bcc.n	201004de <sleep+0xe>
201004fe:	46c0      	nop			; (mov r8, r8)
20100500:	0018      	movs	r0, r3
20100502:	46bd      	mov	sp, r7
20100504:	b004      	add	sp, #16
20100506:	bd80      	pop	{r7, pc}
20100508:	40098000 	.word	0x40098000

2010050c <PortConfig>:
2010050c:	b580      	push	{r7, lr}
2010050e:	af00      	add	r7, sp, #0
20100510:	4b50      	ldr	r3, [pc, #320]	; (20100654 <PortConfig+0x148>)
20100512:	4a50      	ldr	r2, [pc, #320]	; (20100654 <PortConfig+0x148>)
20100514:	69d2      	ldr	r2, [r2, #28]
20100516:	2180      	movs	r1, #128	; 0x80
20100518:	0389      	lsls	r1, r1, #14
2010051a:	430a      	orrs	r2, r1
2010051c:	61da      	str	r2, [r3, #28]
2010051e:	4b4e      	ldr	r3, [pc, #312]	; (20100658 <PortConfig+0x14c>)
20100520:	4a4d      	ldr	r2, [pc, #308]	; (20100658 <PortConfig+0x14c>)
20100522:	6892      	ldr	r2, [r2, #8]
20100524:	494d      	ldr	r1, [pc, #308]	; (2010065c <PortConfig+0x150>)
20100526:	400a      	ands	r2, r1
20100528:	609a      	str	r2, [r3, #8]
2010052a:	4b4b      	ldr	r3, [pc, #300]	; (20100658 <PortConfig+0x14c>)
2010052c:	4a4a      	ldr	r2, [pc, #296]	; (20100658 <PortConfig+0x14c>)
2010052e:	6812      	ldr	r2, [r2, #0]
20100530:	494b      	ldr	r1, [pc, #300]	; (20100660 <PortConfig+0x154>)
20100532:	400a      	ands	r2, r1
20100534:	601a      	str	r2, [r3, #0]
20100536:	4b48      	ldr	r3, [pc, #288]	; (20100658 <PortConfig+0x14c>)
20100538:	4a47      	ldr	r2, [pc, #284]	; (20100658 <PortConfig+0x14c>)
2010053a:	6852      	ldr	r2, [r2, #4]
2010053c:	2180      	movs	r1, #128	; 0x80
2010053e:	0209      	lsls	r1, r1, #8
20100540:	430a      	orrs	r2, r1
20100542:	605a      	str	r2, [r3, #4]
20100544:	4b44      	ldr	r3, [pc, #272]	; (20100658 <PortConfig+0x14c>)
20100546:	4a44      	ldr	r2, [pc, #272]	; (20100658 <PortConfig+0x14c>)
20100548:	68d2      	ldr	r2, [r2, #12]
2010054a:	2180      	movs	r1, #128	; 0x80
2010054c:	0209      	lsls	r1, r1, #8
2010054e:	430a      	orrs	r2, r1
20100550:	60da      	str	r2, [r3, #12]
20100552:	4b41      	ldr	r3, [pc, #260]	; (20100658 <PortConfig+0x14c>)
20100554:	4a40      	ldr	r2, [pc, #256]	; (20100658 <PortConfig+0x14c>)
20100556:	6992      	ldr	r2, [r2, #24]
20100558:	21c0      	movs	r1, #192	; 0xc0
2010055a:	0609      	lsls	r1, r1, #24
2010055c:	430a      	orrs	r2, r1
2010055e:	619a      	str	r2, [r3, #24]
20100560:	4b3d      	ldr	r3, [pc, #244]	; (20100658 <PortConfig+0x14c>)
20100562:	4a3d      	ldr	r2, [pc, #244]	; (20100658 <PortConfig+0x14c>)
20100564:	6892      	ldr	r2, [r2, #8]
20100566:	493f      	ldr	r1, [pc, #252]	; (20100664 <PortConfig+0x158>)
20100568:	430a      	orrs	r2, r1
2010056a:	609a      	str	r2, [r3, #8]
2010056c:	4b3a      	ldr	r3, [pc, #232]	; (20100658 <PortConfig+0x14c>)
2010056e:	4a3a      	ldr	r2, [pc, #232]	; (20100658 <PortConfig+0x14c>)
20100570:	6852      	ldr	r2, [r2, #4]
20100572:	21fc      	movs	r1, #252	; 0xfc
20100574:	0109      	lsls	r1, r1, #4
20100576:	430a      	orrs	r2, r1
20100578:	605a      	str	r2, [r3, #4]
2010057a:	4b37      	ldr	r3, [pc, #220]	; (20100658 <PortConfig+0x14c>)
2010057c:	4a36      	ldr	r2, [pc, #216]	; (20100658 <PortConfig+0x14c>)
2010057e:	68d2      	ldr	r2, [r2, #12]
20100580:	21fc      	movs	r1, #252	; 0xfc
20100582:	0109      	lsls	r1, r1, #4
20100584:	430a      	orrs	r2, r1
20100586:	60da      	str	r2, [r3, #12]
20100588:	4b33      	ldr	r3, [pc, #204]	; (20100658 <PortConfig+0x14c>)
2010058a:	4a33      	ldr	r2, [pc, #204]	; (20100658 <PortConfig+0x14c>)
2010058c:	6992      	ldr	r2, [r2, #24]
2010058e:	4936      	ldr	r1, [pc, #216]	; (20100668 <PortConfig+0x15c>)
20100590:	430a      	orrs	r2, r1
20100592:	619a      	str	r2, [r3, #24]
20100594:	4b2f      	ldr	r3, [pc, #188]	; (20100654 <PortConfig+0x148>)
20100596:	4a2f      	ldr	r2, [pc, #188]	; (20100654 <PortConfig+0x148>)
20100598:	69d2      	ldr	r2, [r2, #28]
2010059a:	2180      	movs	r1, #128	; 0x80
2010059c:	0489      	lsls	r1, r1, #18
2010059e:	430a      	orrs	r2, r1
201005a0:	61da      	str	r2, [r3, #28]
201005a2:	4b32      	ldr	r3, [pc, #200]	; (2010066c <PortConfig+0x160>)
201005a4:	4a31      	ldr	r2, [pc, #196]	; (2010066c <PortConfig+0x160>)
201005a6:	68d2      	ldr	r2, [r2, #12]
201005a8:	2102      	movs	r1, #2
201005aa:	438a      	bics	r2, r1
201005ac:	60da      	str	r2, [r3, #12]
201005ae:	4b29      	ldr	r3, [pc, #164]	; (20100654 <PortConfig+0x148>)
201005b0:	4a28      	ldr	r2, [pc, #160]	; (20100654 <PortConfig+0x148>)
201005b2:	69d2      	ldr	r2, [r2, #28]
201005b4:	2180      	movs	r1, #128	; 0x80
201005b6:	0449      	lsls	r1, r1, #17
201005b8:	430a      	orrs	r2, r1
201005ba:	61da      	str	r2, [r3, #28]
201005bc:	4b2c      	ldr	r3, [pc, #176]	; (20100670 <PortConfig+0x164>)
201005be:	4a2c      	ldr	r2, [pc, #176]	; (20100670 <PortConfig+0x164>)
201005c0:	6892      	ldr	r2, [r2, #8]
201005c2:	492c      	ldr	r1, [pc, #176]	; (20100674 <PortConfig+0x168>)
201005c4:	400a      	ands	r2, r1
201005c6:	609a      	str	r2, [r3, #8]
201005c8:	4b29      	ldr	r3, [pc, #164]	; (20100670 <PortConfig+0x164>)
201005ca:	4a29      	ldr	r2, [pc, #164]	; (20100670 <PortConfig+0x164>)
201005cc:	6892      	ldr	r2, [r2, #8]
201005ce:	21a0      	movs	r1, #160	; 0xa0
201005d0:	02c9      	lsls	r1, r1, #11
201005d2:	430a      	orrs	r2, r1
201005d4:	609a      	str	r2, [r3, #8]
201005d6:	4b26      	ldr	r3, [pc, #152]	; (20100670 <PortConfig+0x164>)
201005d8:	4a25      	ldr	r2, [pc, #148]	; (20100670 <PortConfig+0x164>)
201005da:	68d2      	ldr	r2, [r2, #12]
201005dc:	21c0      	movs	r1, #192	; 0xc0
201005de:	0089      	lsls	r1, r1, #2
201005e0:	430a      	orrs	r2, r1
201005e2:	60da      	str	r2, [r3, #12]
201005e4:	4b22      	ldr	r3, [pc, #136]	; (20100670 <PortConfig+0x164>)
201005e6:	4a22      	ldr	r2, [pc, #136]	; (20100670 <PortConfig+0x164>)
201005e8:	6992      	ldr	r2, [r2, #24]
201005ea:	21c0      	movs	r1, #192	; 0xc0
201005ec:	0309      	lsls	r1, r1, #12
201005ee:	430a      	orrs	r2, r1
201005f0:	619a      	str	r2, [r3, #24]
201005f2:	4b1f      	ldr	r3, [pc, #124]	; (20100670 <PortConfig+0x164>)
201005f4:	4a1e      	ldr	r2, [pc, #120]	; (20100670 <PortConfig+0x164>)
201005f6:	6852      	ldr	r2, [r2, #4]
201005f8:	2180      	movs	r1, #128	; 0x80
201005fa:	0089      	lsls	r1, r1, #2
201005fc:	430a      	orrs	r2, r1
201005fe:	605a      	str	r2, [r3, #4]
20100600:	4b1b      	ldr	r3, [pc, #108]	; (20100670 <PortConfig+0x164>)
20100602:	4a1b      	ldr	r2, [pc, #108]	; (20100670 <PortConfig+0x164>)
20100604:	6852      	ldr	r2, [r2, #4]
20100606:	491c      	ldr	r1, [pc, #112]	; (20100678 <PortConfig+0x16c>)
20100608:	400a      	ands	r2, r1
2010060a:	605a      	str	r2, [r3, #4]
2010060c:	4b11      	ldr	r3, [pc, #68]	; (20100654 <PortConfig+0x148>)
2010060e:	4a11      	ldr	r2, [pc, #68]	; (20100654 <PortConfig+0x148>)
20100610:	69d2      	ldr	r2, [r2, #28]
20100612:	2180      	movs	r1, #128	; 0x80
20100614:	0409      	lsls	r1, r1, #16
20100616:	430a      	orrs	r2, r1
20100618:	61da      	str	r2, [r3, #28]
2010061a:	4b18      	ldr	r3, [pc, #96]	; (2010067c <PortConfig+0x170>)
2010061c:	2200      	movs	r2, #0
2010061e:	609a      	str	r2, [r3, #8]
20100620:	4b16      	ldr	r3, [pc, #88]	; (2010067c <PortConfig+0x170>)
20100622:	2200      	movs	r2, #0
20100624:	601a      	str	r2, [r3, #0]
20100626:	4b15      	ldr	r3, [pc, #84]	; (2010067c <PortConfig+0x170>)
20100628:	4a14      	ldr	r2, [pc, #80]	; (2010067c <PortConfig+0x170>)
2010062a:	6852      	ldr	r2, [r2, #4]
2010062c:	2160      	movs	r1, #96	; 0x60
2010062e:	430a      	orrs	r2, r1
20100630:	605a      	str	r2, [r3, #4]
20100632:	4b12      	ldr	r3, [pc, #72]	; (2010067c <PortConfig+0x170>)
20100634:	4a11      	ldr	r2, [pc, #68]	; (2010067c <PortConfig+0x170>)
20100636:	68d2      	ldr	r2, [r2, #12]
20100638:	2160      	movs	r1, #96	; 0x60
2010063a:	430a      	orrs	r2, r1
2010063c:	60da      	str	r2, [r3, #12]
2010063e:	4b0f      	ldr	r3, [pc, #60]	; (2010067c <PortConfig+0x170>)
20100640:	4a0e      	ldr	r2, [pc, #56]	; (2010067c <PortConfig+0x170>)
20100642:	6992      	ldr	r2, [r2, #24]
20100644:	21f0      	movs	r1, #240	; 0xf0
20100646:	0189      	lsls	r1, r1, #6
20100648:	430a      	orrs	r2, r1
2010064a:	619a      	str	r2, [r3, #24]
2010064c:	46c0      	nop			; (mov r8, r8)
2010064e:	46bd      	mov	sp, r7
20100650:	bd80      	pop	{r7, pc}
20100652:	46c0      	nop			; (mov r8, r8)
20100654:	40020000 	.word	0x40020000
20100658:	400a8000 	.word	0x400a8000
2010065c:	ff000fff 	.word	0xff000fff
20100660:	ffff7fff 	.word	0xffff7fff
20100664:	00aaa000 	.word	0x00aaa000
20100668:	00fff000 	.word	0x00fff000
2010066c:	400c8000 	.word	0x400c8000
20100670:	400c0000 	.word	0x400c0000
20100674:	fff0ffff 	.word	0xfff0ffff
20100678:	fffffeff 	.word	0xfffffeff
2010067c:	400b8000 	.word	0x400b8000

20100680 <ClkConfig>:
20100680:	b580      	push	{r7, lr}
20100682:	af00      	add	r7, sp, #0
20100684:	4b18      	ldr	r3, [pc, #96]	; (201006e8 <ClkConfig+0x68>)
20100686:	4a18      	ldr	r2, [pc, #96]	; (201006e8 <ClkConfig+0x68>)
20100688:	6892      	ldr	r2, [r2, #8]
2010068a:	2101      	movs	r1, #1
2010068c:	430a      	orrs	r2, r1
2010068e:	609a      	str	r2, [r3, #8]
20100690:	46c0      	nop			; (mov r8, r8)
20100692:	4b15      	ldr	r3, [pc, #84]	; (201006e8 <ClkConfig+0x68>)
20100694:	681b      	ldr	r3, [r3, #0]
20100696:	2204      	movs	r2, #4
20100698:	4013      	ands	r3, r2
2010069a:	d0fa      	beq.n	20100692 <ClkConfig+0x12>
2010069c:	4b12      	ldr	r3, [pc, #72]	; (201006e8 <ClkConfig+0x68>)
2010069e:	4a12      	ldr	r2, [pc, #72]	; (201006e8 <ClkConfig+0x68>)
201006a0:	68d2      	ldr	r2, [r2, #12]
201006a2:	2102      	movs	r1, #2
201006a4:	430a      	orrs	r2, r1
201006a6:	60da      	str	r2, [r3, #12]
201006a8:	4b0f      	ldr	r3, [pc, #60]	; (201006e8 <ClkConfig+0x68>)
201006aa:	4a10      	ldr	r2, [pc, #64]	; (201006ec <ClkConfig+0x6c>)
201006ac:	605a      	str	r2, [r3, #4]
201006ae:	46c0      	nop			; (mov r8, r8)
201006b0:	4b0d      	ldr	r3, [pc, #52]	; (201006e8 <ClkConfig+0x68>)
201006b2:	681b      	ldr	r3, [r3, #0]
201006b4:	2202      	movs	r2, #2
201006b6:	4013      	ands	r3, r2
201006b8:	d0fa      	beq.n	201006b0 <ClkConfig+0x30>
201006ba:	4b0d      	ldr	r3, [pc, #52]	; (201006f0 <ClkConfig+0x70>)
201006bc:	4a0c      	ldr	r2, [pc, #48]	; (201006f0 <ClkConfig+0x70>)
201006be:	6812      	ldr	r2, [r2, #0]
201006c0:	2120      	movs	r1, #32
201006c2:	430a      	orrs	r2, r1
201006c4:	601a      	str	r2, [r3, #0]
201006c6:	4b08      	ldr	r3, [pc, #32]	; (201006e8 <ClkConfig+0x68>)
201006c8:	4a07      	ldr	r2, [pc, #28]	; (201006e8 <ClkConfig+0x68>)
201006ca:	68d2      	ldr	r2, [r2, #12]
201006cc:	2180      	movs	r1, #128	; 0x80
201006ce:	0049      	lsls	r1, r1, #1
201006d0:	430a      	orrs	r2, r1
201006d2:	60da      	str	r2, [r3, #12]
201006d4:	4b04      	ldr	r3, [pc, #16]	; (201006e8 <ClkConfig+0x68>)
201006d6:	4a04      	ldr	r2, [pc, #16]	; (201006e8 <ClkConfig+0x68>)
201006d8:	68d2      	ldr	r2, [r2, #12]
201006da:	2104      	movs	r1, #4
201006dc:	430a      	orrs	r2, r1
201006de:	60da      	str	r2, [r3, #12]
201006e0:	46c0      	nop			; (mov r8, r8)
201006e2:	46bd      	mov	sp, r7
201006e4:	bd80      	pop	{r7, pc}
201006e6:	46c0      	nop			; (mov r8, r8)
201006e8:	40020000 	.word	0x40020000
201006ec:	00000e04 	.word	0x00000e04
201006f0:	40018000 	.word	0x40018000

201006f4 <TimerConfig>:
201006f4:	b580      	push	{r7, lr}
201006f6:	af00      	add	r7, sp, #0
201006f8:	4b7a      	ldr	r3, [pc, #488]	; (201008e4 <TimerConfig+0x1f0>)
201006fa:	4a7a      	ldr	r2, [pc, #488]	; (201008e4 <TimerConfig+0x1f0>)
201006fc:	69d2      	ldr	r2, [r2, #28]
201006fe:	2180      	movs	r1, #128	; 0x80
20100700:	0309      	lsls	r1, r1, #12
20100702:	430a      	orrs	r2, r1
20100704:	61da      	str	r2, [r3, #28]
20100706:	4b77      	ldr	r3, [pc, #476]	; (201008e4 <TimerConfig+0x1f0>)
20100708:	4a76      	ldr	r2, [pc, #472]	; (201008e4 <TimerConfig+0x1f0>)
2010070a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010070c:	2180      	movs	r1, #128	; 0x80
2010070e:	04c9      	lsls	r1, r1, #19
20100710:	430a      	orrs	r2, r1
20100712:	629a      	str	r2, [r3, #40]	; 0x28
20100714:	4b73      	ldr	r3, [pc, #460]	; (201008e4 <TimerConfig+0x1f0>)
20100716:	4a73      	ldr	r2, [pc, #460]	; (201008e4 <TimerConfig+0x1f0>)
20100718:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010071a:	4973      	ldr	r1, [pc, #460]	; (201008e8 <TimerConfig+0x1f4>)
2010071c:	400a      	ands	r2, r1
2010071e:	629a      	str	r2, [r3, #40]	; 0x28
20100720:	4b72      	ldr	r3, [pc, #456]	; (201008ec <TimerConfig+0x1f8>)
20100722:	2200      	movs	r2, #0
20100724:	601a      	str	r2, [r3, #0]
20100726:	4b71      	ldr	r3, [pc, #452]	; (201008ec <TimerConfig+0x1f8>)
20100728:	2204      	movs	r2, #4
2010072a:	605a      	str	r2, [r3, #4]
2010072c:	4b6f      	ldr	r3, [pc, #444]	; (201008ec <TimerConfig+0x1f8>)
2010072e:	4a70      	ldr	r2, [pc, #448]	; (201008f0 <TimerConfig+0x1fc>)
20100730:	609a      	str	r2, [r3, #8]
20100732:	4b6e      	ldr	r3, [pc, #440]	; (201008ec <TimerConfig+0x1f8>)
20100734:	2280      	movs	r2, #128	; 0x80
20100736:	0092      	lsls	r2, r2, #2
20100738:	611a      	str	r2, [r3, #16]
2010073a:	4b6c      	ldr	r3, [pc, #432]	; (201008ec <TimerConfig+0x1f8>)
2010073c:	2280      	movs	r2, #128	; 0x80
2010073e:	0092      	lsls	r2, r2, #2
20100740:	615a      	str	r2, [r3, #20]
20100742:	4b6a      	ldr	r3, [pc, #424]	; (201008ec <TimerConfig+0x1f8>)
20100744:	2280      	movs	r2, #128	; 0x80
20100746:	0092      	lsls	r2, r2, #2
20100748:	619a      	str	r2, [r3, #24]
2010074a:	4b68      	ldr	r3, [pc, #416]	; (201008ec <TimerConfig+0x1f8>)
2010074c:	4a67      	ldr	r2, [pc, #412]	; (201008ec <TimerConfig+0x1f8>)
2010074e:	6a12      	ldr	r2, [r2, #32]
20100750:	4968      	ldr	r1, [pc, #416]	; (201008f4 <TimerConfig+0x200>)
20100752:	400a      	ands	r2, r1
20100754:	621a      	str	r2, [r3, #32]
20100756:	4b65      	ldr	r3, [pc, #404]	; (201008ec <TimerConfig+0x1f8>)
20100758:	4a64      	ldr	r2, [pc, #400]	; (201008ec <TimerConfig+0x1f8>)
2010075a:	6a12      	ldr	r2, [r2, #32]
2010075c:	21e0      	movs	r1, #224	; 0xe0
2010075e:	0109      	lsls	r1, r1, #4
20100760:	430a      	orrs	r2, r1
20100762:	621a      	str	r2, [r3, #32]
20100764:	4b61      	ldr	r3, [pc, #388]	; (201008ec <TimerConfig+0x1f8>)
20100766:	4a61      	ldr	r2, [pc, #388]	; (201008ec <TimerConfig+0x1f8>)
20100768:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010076a:	210f      	movs	r1, #15
2010076c:	438a      	bics	r2, r1
2010076e:	631a      	str	r2, [r3, #48]	; 0x30
20100770:	4b5e      	ldr	r3, [pc, #376]	; (201008ec <TimerConfig+0x1f8>)
20100772:	4a5e      	ldr	r2, [pc, #376]	; (201008ec <TimerConfig+0x1f8>)
20100774:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100776:	210c      	movs	r1, #12
20100778:	430a      	orrs	r2, r1
2010077a:	631a      	str	r2, [r3, #48]	; 0x30
2010077c:	4b5b      	ldr	r3, [pc, #364]	; (201008ec <TimerConfig+0x1f8>)
2010077e:	4a5b      	ldr	r2, [pc, #364]	; (201008ec <TimerConfig+0x1f8>)
20100780:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100782:	2101      	movs	r1, #1
20100784:	430a      	orrs	r2, r1
20100786:	631a      	str	r2, [r3, #48]	; 0x30
20100788:	4b58      	ldr	r3, [pc, #352]	; (201008ec <TimerConfig+0x1f8>)
2010078a:	4a58      	ldr	r2, [pc, #352]	; (201008ec <TimerConfig+0x1f8>)
2010078c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010078e:	495a      	ldr	r1, [pc, #360]	; (201008f8 <TimerConfig+0x204>)
20100790:	400a      	ands	r2, r1
20100792:	631a      	str	r2, [r3, #48]	; 0x30
20100794:	4b55      	ldr	r3, [pc, #340]	; (201008ec <TimerConfig+0x1f8>)
20100796:	4a55      	ldr	r2, [pc, #340]	; (201008ec <TimerConfig+0x1f8>)
20100798:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010079a:	21c0      	movs	r1, #192	; 0xc0
2010079c:	0109      	lsls	r1, r1, #4
2010079e:	430a      	orrs	r2, r1
201007a0:	631a      	str	r2, [r3, #48]	; 0x30
201007a2:	4b52      	ldr	r3, [pc, #328]	; (201008ec <TimerConfig+0x1f8>)
201007a4:	4a51      	ldr	r2, [pc, #324]	; (201008ec <TimerConfig+0x1f8>)
201007a6:	6b12      	ldr	r2, [r2, #48]	; 0x30
201007a8:	2180      	movs	r1, #128	; 0x80
201007aa:	0049      	lsls	r1, r1, #1
201007ac:	430a      	orrs	r2, r1
201007ae:	631a      	str	r2, [r3, #48]	; 0x30
201007b0:	4b4e      	ldr	r3, [pc, #312]	; (201008ec <TimerConfig+0x1f8>)
201007b2:	4a4e      	ldr	r2, [pc, #312]	; (201008ec <TimerConfig+0x1f8>)
201007b4:	6e12      	ldr	r2, [r2, #96]	; 0x60
201007b6:	2108      	movs	r1, #8
201007b8:	430a      	orrs	r2, r1
201007ba:	661a      	str	r2, [r3, #96]	; 0x60
201007bc:	4b4b      	ldr	r3, [pc, #300]	; (201008ec <TimerConfig+0x1f8>)
201007be:	4a4b      	ldr	r2, [pc, #300]	; (201008ec <TimerConfig+0x1f8>)
201007c0:	6a52      	ldr	r2, [r2, #36]	; 0x24
201007c2:	494c      	ldr	r1, [pc, #304]	; (201008f4 <TimerConfig+0x200>)
201007c4:	400a      	ands	r2, r1
201007c6:	625a      	str	r2, [r3, #36]	; 0x24
201007c8:	4b48      	ldr	r3, [pc, #288]	; (201008ec <TimerConfig+0x1f8>)
201007ca:	4a48      	ldr	r2, [pc, #288]	; (201008ec <TimerConfig+0x1f8>)
201007cc:	6a52      	ldr	r2, [r2, #36]	; 0x24
201007ce:	21e0      	movs	r1, #224	; 0xe0
201007d0:	0109      	lsls	r1, r1, #4
201007d2:	430a      	orrs	r2, r1
201007d4:	625a      	str	r2, [r3, #36]	; 0x24
201007d6:	4b45      	ldr	r3, [pc, #276]	; (201008ec <TimerConfig+0x1f8>)
201007d8:	4a44      	ldr	r2, [pc, #272]	; (201008ec <TimerConfig+0x1f8>)
201007da:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007dc:	210f      	movs	r1, #15
201007de:	438a      	bics	r2, r1
201007e0:	635a      	str	r2, [r3, #52]	; 0x34
201007e2:	4b42      	ldr	r3, [pc, #264]	; (201008ec <TimerConfig+0x1f8>)
201007e4:	4a41      	ldr	r2, [pc, #260]	; (201008ec <TimerConfig+0x1f8>)
201007e6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007e8:	210c      	movs	r1, #12
201007ea:	430a      	orrs	r2, r1
201007ec:	635a      	str	r2, [r3, #52]	; 0x34
201007ee:	4b3f      	ldr	r3, [pc, #252]	; (201008ec <TimerConfig+0x1f8>)
201007f0:	4a3e      	ldr	r2, [pc, #248]	; (201008ec <TimerConfig+0x1f8>)
201007f2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007f4:	2101      	movs	r1, #1
201007f6:	430a      	orrs	r2, r1
201007f8:	635a      	str	r2, [r3, #52]	; 0x34
201007fa:	4b3c      	ldr	r3, [pc, #240]	; (201008ec <TimerConfig+0x1f8>)
201007fc:	4a3b      	ldr	r2, [pc, #236]	; (201008ec <TimerConfig+0x1f8>)
201007fe:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100800:	493d      	ldr	r1, [pc, #244]	; (201008f8 <TimerConfig+0x204>)
20100802:	400a      	ands	r2, r1
20100804:	635a      	str	r2, [r3, #52]	; 0x34
20100806:	4b39      	ldr	r3, [pc, #228]	; (201008ec <TimerConfig+0x1f8>)
20100808:	4a38      	ldr	r2, [pc, #224]	; (201008ec <TimerConfig+0x1f8>)
2010080a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010080c:	21c0      	movs	r1, #192	; 0xc0
2010080e:	0109      	lsls	r1, r1, #4
20100810:	430a      	orrs	r2, r1
20100812:	635a      	str	r2, [r3, #52]	; 0x34
20100814:	4b35      	ldr	r3, [pc, #212]	; (201008ec <TimerConfig+0x1f8>)
20100816:	4a35      	ldr	r2, [pc, #212]	; (201008ec <TimerConfig+0x1f8>)
20100818:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010081a:	2180      	movs	r1, #128	; 0x80
2010081c:	0049      	lsls	r1, r1, #1
2010081e:	430a      	orrs	r2, r1
20100820:	635a      	str	r2, [r3, #52]	; 0x34
20100822:	4b32      	ldr	r3, [pc, #200]	; (201008ec <TimerConfig+0x1f8>)
20100824:	4a31      	ldr	r2, [pc, #196]	; (201008ec <TimerConfig+0x1f8>)
20100826:	6e52      	ldr	r2, [r2, #100]	; 0x64
20100828:	2108      	movs	r1, #8
2010082a:	430a      	orrs	r2, r1
2010082c:	665a      	str	r2, [r3, #100]	; 0x64
2010082e:	4b2f      	ldr	r3, [pc, #188]	; (201008ec <TimerConfig+0x1f8>)
20100830:	4a2e      	ldr	r2, [pc, #184]	; (201008ec <TimerConfig+0x1f8>)
20100832:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100834:	492f      	ldr	r1, [pc, #188]	; (201008f4 <TimerConfig+0x200>)
20100836:	400a      	ands	r2, r1
20100838:	629a      	str	r2, [r3, #40]	; 0x28
2010083a:	4b2c      	ldr	r3, [pc, #176]	; (201008ec <TimerConfig+0x1f8>)
2010083c:	4a2b      	ldr	r2, [pc, #172]	; (201008ec <TimerConfig+0x1f8>)
2010083e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100840:	21e0      	movs	r1, #224	; 0xe0
20100842:	0109      	lsls	r1, r1, #4
20100844:	430a      	orrs	r2, r1
20100846:	629a      	str	r2, [r3, #40]	; 0x28
20100848:	4b28      	ldr	r3, [pc, #160]	; (201008ec <TimerConfig+0x1f8>)
2010084a:	4a28      	ldr	r2, [pc, #160]	; (201008ec <TimerConfig+0x1f8>)
2010084c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010084e:	210f      	movs	r1, #15
20100850:	438a      	bics	r2, r1
20100852:	639a      	str	r2, [r3, #56]	; 0x38
20100854:	4b25      	ldr	r3, [pc, #148]	; (201008ec <TimerConfig+0x1f8>)
20100856:	4a25      	ldr	r2, [pc, #148]	; (201008ec <TimerConfig+0x1f8>)
20100858:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010085a:	210c      	movs	r1, #12
2010085c:	430a      	orrs	r2, r1
2010085e:	639a      	str	r2, [r3, #56]	; 0x38
20100860:	4b22      	ldr	r3, [pc, #136]	; (201008ec <TimerConfig+0x1f8>)
20100862:	4a22      	ldr	r2, [pc, #136]	; (201008ec <TimerConfig+0x1f8>)
20100864:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100866:	2101      	movs	r1, #1
20100868:	430a      	orrs	r2, r1
2010086a:	639a      	str	r2, [r3, #56]	; 0x38
2010086c:	4b1f      	ldr	r3, [pc, #124]	; (201008ec <TimerConfig+0x1f8>)
2010086e:	4a1f      	ldr	r2, [pc, #124]	; (201008ec <TimerConfig+0x1f8>)
20100870:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100872:	4921      	ldr	r1, [pc, #132]	; (201008f8 <TimerConfig+0x204>)
20100874:	400a      	ands	r2, r1
20100876:	639a      	str	r2, [r3, #56]	; 0x38
20100878:	4b1c      	ldr	r3, [pc, #112]	; (201008ec <TimerConfig+0x1f8>)
2010087a:	4a1c      	ldr	r2, [pc, #112]	; (201008ec <TimerConfig+0x1f8>)
2010087c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010087e:	21c0      	movs	r1, #192	; 0xc0
20100880:	0109      	lsls	r1, r1, #4
20100882:	430a      	orrs	r2, r1
20100884:	639a      	str	r2, [r3, #56]	; 0x38
20100886:	4b19      	ldr	r3, [pc, #100]	; (201008ec <TimerConfig+0x1f8>)
20100888:	4a18      	ldr	r2, [pc, #96]	; (201008ec <TimerConfig+0x1f8>)
2010088a:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010088c:	2180      	movs	r1, #128	; 0x80
2010088e:	0049      	lsls	r1, r1, #1
20100890:	430a      	orrs	r2, r1
20100892:	639a      	str	r2, [r3, #56]	; 0x38
20100894:	4b15      	ldr	r3, [pc, #84]	; (201008ec <TimerConfig+0x1f8>)
20100896:	4a15      	ldr	r2, [pc, #84]	; (201008ec <TimerConfig+0x1f8>)
20100898:	6e92      	ldr	r2, [r2, #104]	; 0x68
2010089a:	2108      	movs	r1, #8
2010089c:	430a      	orrs	r2, r1
2010089e:	669a      	str	r2, [r3, #104]	; 0x68
201008a0:	4b12      	ldr	r3, [pc, #72]	; (201008ec <TimerConfig+0x1f8>)
201008a2:	4a12      	ldr	r2, [pc, #72]	; (201008ec <TimerConfig+0x1f8>)
201008a4:	6c12      	ldr	r2, [r2, #64]	; 0x40
201008a6:	2196      	movs	r1, #150	; 0x96
201008a8:	0189      	lsls	r1, r1, #6
201008aa:	430a      	orrs	r2, r1
201008ac:	641a      	str	r2, [r3, #64]	; 0x40
201008ae:	4b0f      	ldr	r3, [pc, #60]	; (201008ec <TimerConfig+0x1f8>)
201008b0:	4a0e      	ldr	r2, [pc, #56]	; (201008ec <TimerConfig+0x1f8>)
201008b2:	6c52      	ldr	r2, [r2, #68]	; 0x44
201008b4:	2196      	movs	r1, #150	; 0x96
201008b6:	0189      	lsls	r1, r1, #6
201008b8:	430a      	orrs	r2, r1
201008ba:	645a      	str	r2, [r3, #68]	; 0x44
201008bc:	4b0b      	ldr	r3, [pc, #44]	; (201008ec <TimerConfig+0x1f8>)
201008be:	4a0b      	ldr	r2, [pc, #44]	; (201008ec <TimerConfig+0x1f8>)
201008c0:	6c92      	ldr	r2, [r2, #72]	; 0x48
201008c2:	2196      	movs	r1, #150	; 0x96
201008c4:	0189      	lsls	r1, r1, #6
201008c6:	430a      	orrs	r2, r1
201008c8:	649a      	str	r2, [r3, #72]	; 0x48
201008ca:	4b08      	ldr	r3, [pc, #32]	; (201008ec <TimerConfig+0x1f8>)
201008cc:	4a07      	ldr	r2, [pc, #28]	; (201008ec <TimerConfig+0x1f8>)
201008ce:	6d92      	ldr	r2, [r2, #88]	; 0x58
201008d0:	21f0      	movs	r1, #240	; 0xf0
201008d2:	0149      	lsls	r1, r1, #5
201008d4:	430a      	orrs	r2, r1
201008d6:	659a      	str	r2, [r3, #88]	; 0x58
201008d8:	4b04      	ldr	r3, [pc, #16]	; (201008ec <TimerConfig+0x1f8>)
201008da:	2201      	movs	r2, #1
201008dc:	60da      	str	r2, [r3, #12]
201008de:	46c0      	nop			; (mov r8, r8)
201008e0:	46bd      	mov	sp, r7
201008e2:	bd80      	pop	{r7, pc}
201008e4:	40020000 	.word	0x40020000
201008e8:	ff00ffff 	.word	0xff00ffff
201008ec:	40098000 	.word	0x40098000
201008f0:	000003ff 	.word	0x000003ff
201008f4:	fffff1ff 	.word	0xfffff1ff
201008f8:	fffff0ff 	.word	0xfffff0ff

201008fc <adc_init>:
201008fc:	b580      	push	{r7, lr}
201008fe:	af00      	add	r7, sp, #0
20100900:	4b0f      	ldr	r3, [pc, #60]	; (20100940 <adc_init+0x44>)
20100902:	4a0f      	ldr	r2, [pc, #60]	; (20100940 <adc_init+0x44>)
20100904:	69d2      	ldr	r2, [r2, #28]
20100906:	2180      	movs	r1, #128	; 0x80
20100908:	0289      	lsls	r1, r1, #10
2010090a:	430a      	orrs	r2, r1
2010090c:	61da      	str	r2, [r3, #28]
2010090e:	4b0c      	ldr	r3, [pc, #48]	; (20100940 <adc_init+0x44>)
20100910:	4a0c      	ldr	r2, [pc, #48]	; (20100944 <adc_init+0x48>)
20100912:	615a      	str	r2, [r3, #20]
20100914:	4b0c      	ldr	r3, [pc, #48]	; (20100948 <adc_init+0x4c>)
20100916:	2200      	movs	r2, #0
20100918:	601a      	str	r2, [r3, #0]
2010091a:	4b0b      	ldr	r3, [pc, #44]	; (20100948 <adc_init+0x4c>)
2010091c:	4a0a      	ldr	r2, [pc, #40]	; (20100948 <adc_init+0x4c>)
2010091e:	6812      	ldr	r2, [r2, #0]
20100920:	490a      	ldr	r1, [pc, #40]	; (2010094c <adc_init+0x50>)
20100922:	430a      	orrs	r2, r1
20100924:	601a      	str	r2, [r3, #0]
20100926:	4b08      	ldr	r3, [pc, #32]	; (20100948 <adc_init+0x4c>)
20100928:	4a07      	ldr	r2, [pc, #28]	; (20100948 <adc_init+0x4c>)
2010092a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010092c:	2139      	movs	r1, #57	; 0x39
2010092e:	430a      	orrs	r2, r1
20100930:	629a      	str	r2, [r3, #40]	; 0x28
20100932:	4b05      	ldr	r3, [pc, #20]	; (20100948 <adc_init+0x4c>)
20100934:	2210      	movs	r2, #16
20100936:	621a      	str	r2, [r3, #32]
20100938:	46c0      	nop			; (mov r8, r8)
2010093a:	46bd      	mov	sp, r7
2010093c:	bd80      	pop	{r7, pc}
2010093e:	46c0      	nop			; (mov r8, r8)
20100940:	40020000 	.word	0x40020000
20100944:	00002020 	.word	0x00002020
20100948:	40088000 	.word	0x40088000
2010094c:	00000205 	.word	0x00000205

20100950 <dac_init>:
20100950:	b580      	push	{r7, lr}
20100952:	af00      	add	r7, sp, #0
20100954:	4b07      	ldr	r3, [pc, #28]	; (20100974 <dac_init+0x24>)
20100956:	4a07      	ldr	r2, [pc, #28]	; (20100974 <dac_init+0x24>)
20100958:	69d2      	ldr	r2, [r2, #28]
2010095a:	2180      	movs	r1, #128	; 0x80
2010095c:	02c9      	lsls	r1, r1, #11
2010095e:	430a      	orrs	r2, r1
20100960:	61da      	str	r2, [r3, #28]
20100962:	4b05      	ldr	r3, [pc, #20]	; (20100978 <dac_init+0x28>)
20100964:	4a04      	ldr	r2, [pc, #16]	; (20100978 <dac_init+0x28>)
20100966:	6812      	ldr	r2, [r2, #0]
20100968:	2104      	movs	r1, #4
2010096a:	430a      	orrs	r2, r1
2010096c:	601a      	str	r2, [r3, #0]
2010096e:	46c0      	nop			; (mov r8, r8)
20100970:	46bd      	mov	sp, r7
20100972:	bd80      	pop	{r7, pc}
20100974:	40020000 	.word	0x40020000
20100978:	40090000 	.word	0x40090000

2010097c <ssi_init>:
2010097c:	b580      	push	{r7, lr}
2010097e:	af00      	add	r7, sp, #0
20100980:	4b0c      	ldr	r3, [pc, #48]	; (201009b4 <ssi_init+0x38>)
20100982:	4a0c      	ldr	r2, [pc, #48]	; (201009b4 <ssi_init+0x38>)
20100984:	69d2      	ldr	r2, [r2, #28]
20100986:	2180      	movs	r1, #128	; 0x80
20100988:	0349      	lsls	r1, r1, #13
2010098a:	430a      	orrs	r2, r1
2010098c:	61da      	str	r2, [r3, #28]
2010098e:	4b09      	ldr	r3, [pc, #36]	; (201009b4 <ssi_init+0x38>)
20100990:	4a09      	ldr	r2, [pc, #36]	; (201009b8 <ssi_init+0x3c>)
20100992:	62da      	str	r2, [r3, #44]	; 0x2c
20100994:	4b09      	ldr	r3, [pc, #36]	; (201009bc <ssi_init+0x40>)
20100996:	2200      	movs	r2, #0
20100998:	605a      	str	r2, [r3, #4]
2010099a:	4b08      	ldr	r3, [pc, #32]	; (201009bc <ssi_init+0x40>)
2010099c:	220a      	movs	r2, #10
2010099e:	611a      	str	r2, [r3, #16]
201009a0:	4b06      	ldr	r3, [pc, #24]	; (201009bc <ssi_init+0x40>)
201009a2:	4a07      	ldr	r2, [pc, #28]	; (201009c0 <ssi_init+0x44>)
201009a4:	601a      	str	r2, [r3, #0]
201009a6:	4b05      	ldr	r3, [pc, #20]	; (201009bc <ssi_init+0x40>)
201009a8:	2202      	movs	r2, #2
201009aa:	605a      	str	r2, [r3, #4]
201009ac:	46c0      	nop			; (mov r8, r8)
201009ae:	46bd      	mov	sp, r7
201009b0:	bd80      	pop	{r7, pc}
201009b2:	46c0      	nop			; (mov r8, r8)
201009b4:	40020000 	.word	0x40020000
201009b8:	02000200 	.word	0x02000200
201009bc:	400a0000 	.word	0x400a0000
201009c0:	0000021b 	.word	0x0000021b

201009c4 <b2g>:
201009c4:	b580      	push	{r7, lr}
201009c6:	b082      	sub	sp, #8
201009c8:	af00      	add	r7, sp, #0
201009ca:	6078      	str	r0, [r7, #4]
201009cc:	687b      	ldr	r3, [r7, #4]
201009ce:	085a      	lsrs	r2, r3, #1
201009d0:	687b      	ldr	r3, [r7, #4]
201009d2:	4053      	eors	r3, r2
201009d4:	0018      	movs	r0, r3
201009d6:	46bd      	mov	sp, r7
201009d8:	b002      	add	sp, #8
201009da:	bd80      	pop	{r7, pc}

201009dc <g2b>:
201009dc:	b580      	push	{r7, lr}
201009de:	b084      	sub	sp, #16
201009e0:	af00      	add	r7, sp, #0
201009e2:	6078      	str	r0, [r7, #4]
201009e4:	2300      	movs	r3, #0
201009e6:	60fb      	str	r3, [r7, #12]
201009e8:	2300      	movs	r3, #0
201009ea:	60fb      	str	r3, [r7, #12]
201009ec:	e006      	b.n	201009fc <g2b+0x20>
201009ee:	68fa      	ldr	r2, [r7, #12]
201009f0:	687b      	ldr	r3, [r7, #4]
201009f2:	4053      	eors	r3, r2
201009f4:	60fb      	str	r3, [r7, #12]
201009f6:	687b      	ldr	r3, [r7, #4]
201009f8:	085b      	lsrs	r3, r3, #1
201009fa:	607b      	str	r3, [r7, #4]
201009fc:	687b      	ldr	r3, [r7, #4]
201009fe:	2b00      	cmp	r3, #0
20100a00:	d1f5      	bne.n	201009ee <g2b+0x12>
20100a02:	68fb      	ldr	r3, [r7, #12]
20100a04:	0018      	movs	r0, r3
20100a06:	46bd      	mov	sp, r7
20100a08:	b004      	add	sp, #16
20100a0a:	bd80      	pop	{r7, pc}

20100a0c <SystemInit>:
20100a0c:	b580      	push	{r7, lr}
20100a0e:	af00      	add	r7, sp, #0
20100a10:	f7ff fe36 	bl	20100680 <ClkConfig>
20100a14:	f7ff fd7a 	bl	2010050c <PortConfig>
20100a18:	f7ff fe6c 	bl	201006f4 <TimerConfig>
20100a1c:	f7ff ff6e 	bl	201008fc <adc_init>
20100a20:	f7ff ff96 	bl	20100950 <dac_init>
20100a24:	f7ff ffaa 	bl	2010097c <ssi_init>
20100a28:	f000 fc4a 	bl	201012c0 <adc_dma_init>
20100a2c:	46c0      	nop			; (mov r8, r8)
20100a2e:	46bd      	mov	sp, r7
20100a30:	bd80      	pop	{r7, pc}
20100a32:	46c0      	nop			; (mov r8, r8)

20100a34 <timer_wait>:
20100a34:	b580      	push	{r7, lr}
20100a36:	af00      	add	r7, sp, #0
20100a38:	46c0      	nop			; (mov r8, r8)
20100a3a:	4b05      	ldr	r3, [pc, #20]	; (20100a50 <timer_wait+0x1c>)
20100a3c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100a3e:	2202      	movs	r2, #2
20100a40:	4013      	ands	r3, r2
20100a42:	d0fa      	beq.n	20100a3a <timer_wait+0x6>
20100a44:	4b02      	ldr	r3, [pc, #8]	; (20100a50 <timer_wait+0x1c>)
20100a46:	2200      	movs	r2, #0
20100a48:	655a      	str	r2, [r3, #84]	; 0x54
20100a4a:	46c0      	nop			; (mov r8, r8)
20100a4c:	46bd      	mov	sp, r7
20100a4e:	bd80      	pop	{r7, pc}
20100a50:	40098000 	.word	0x40098000

20100a54 <mycos>:
20100a54:	4b05      	ldr	r3, [pc, #20]	; (20100a6c <mycos+0x18>)
20100a56:	4a06      	ldr	r2, [pc, #24]	; (20100a70 <mycos+0x1c>)
20100a58:	447b      	add	r3, pc
20100a5a:	0580      	lsls	r0, r0, #22
20100a5c:	589b      	ldr	r3, [r3, r2]
20100a5e:	0d00      	lsrs	r0, r0, #20
20100a60:	58c0      	ldr	r0, [r0, r3]
20100a62:	b082      	sub	sp, #8
20100a64:	9301      	str	r3, [sp, #4]
20100a66:	b002      	add	sp, #8
20100a68:	4770      	bx	lr
20100a6a:	46c0      	nop			; (mov r8, r8)
20100a6c:	ffeff630 	.word	0xffeff630
20100a70:	00000000 	.word	0x00000000

20100a74 <mysin>:
20100a74:	4b07      	ldr	r3, [pc, #28]	; (20100a94 <mysin+0x20>)
20100a76:	4a08      	ldr	r2, [pc, #32]	; (20100a98 <mysin+0x24>)
20100a78:	447b      	add	r3, pc
20100a7a:	589b      	ldr	r3, [r3, r2]
20100a7c:	b082      	sub	sp, #8
20100a7e:	9301      	str	r3, [sp, #4]
20100a80:	23c0      	movs	r3, #192	; 0xc0
20100a82:	009b      	lsls	r3, r3, #2
20100a84:	469c      	mov	ip, r3
20100a86:	4460      	add	r0, ip
20100a88:	9b01      	ldr	r3, [sp, #4]
20100a8a:	0580      	lsls	r0, r0, #22
20100a8c:	0d00      	lsrs	r0, r0, #20
20100a8e:	58c0      	ldr	r0, [r0, r3]
20100a90:	b002      	add	sp, #8
20100a92:	4770      	bx	lr
20100a94:	ffeff610 	.word	0xffeff610
20100a98:	00000000 	.word	0x00000000

20100a9c <reg_init>:
20100a9c:	2300      	movs	r3, #0
20100a9e:	6001      	str	r1, [r0, #0]
20100aa0:	6042      	str	r2, [r0, #4]
20100aa2:	6083      	str	r3, [r0, #8]
20100aa4:	60c3      	str	r3, [r0, #12]
20100aa6:	4770      	bx	lr

20100aa8 <reg_update>:
20100aa8:	b510      	push	{r4, lr}
20100aaa:	6804      	ldr	r4, [r0, #0]
20100aac:	6883      	ldr	r3, [r0, #8]
20100aae:	434c      	muls	r4, r1
20100ab0:	2a00      	cmp	r2, #0
20100ab2:	d004      	beq.n	20100abe <reg_update+0x16>
20100ab4:	2b00      	cmp	r3, #0
20100ab6:	dd09      	ble.n	20100acc <reg_update+0x24>
20100ab8:	2c00      	cmp	r4, #0
20100aba:	dd00      	ble.n	20100abe <reg_update+0x16>
20100abc:	2400      	movs	r4, #0
20100abe:	6842      	ldr	r2, [r0, #4]
20100ac0:	18e3      	adds	r3, r4, r3
20100ac2:	4351      	muls	r1, r2
20100ac4:	18c9      	adds	r1, r1, r3
20100ac6:	60c1      	str	r1, [r0, #12]
20100ac8:	6083      	str	r3, [r0, #8]
20100aca:	bd10      	pop	{r4, pc}
20100acc:	2b00      	cmp	r3, #0
20100ace:	d0f6      	beq.n	20100abe <reg_update+0x16>
20100ad0:	43e2      	mvns	r2, r4
20100ad2:	17d2      	asrs	r2, r2, #31
20100ad4:	4014      	ands	r4, r2
20100ad6:	e7f2      	b.n	20100abe <reg_update+0x16>

20100ad8 <cord_atan>:
20100ad8:	b5f0      	push	{r4, r5, r6, r7, lr}
20100ada:	4645      	mov	r5, r8
20100adc:	4657      	mov	r7, sl
20100ade:	464e      	mov	r6, r9
20100ae0:	b4e0      	push	{r5, r6, r7}
20100ae2:	4b65      	ldr	r3, [pc, #404]	; (20100c78 <cord_atan+0x1a0>)
20100ae4:	b090      	sub	sp, #64	; 0x40
20100ae6:	447b      	add	r3, pc
20100ae8:	001c      	movs	r4, r3
20100aea:	4694      	mov	ip, r2
20100aec:	466a      	mov	r2, sp
20100aee:	468a      	mov	sl, r1
20100af0:	cca2      	ldmia	r4!, {r1, r5, r7}
20100af2:	c2a2      	stmia	r2!, {r1, r5, r7}
20100af4:	cca2      	ldmia	r4!, {r1, r5, r7}
20100af6:	c2a2      	stmia	r2!, {r1, r5, r7}
20100af8:	cc22      	ldmia	r4!, {r1, r5}
20100afa:	c222      	stmia	r2!, {r1, r5}
20100afc:	3320      	adds	r3, #32
20100afe:	aa08      	add	r2, sp, #32
20100b00:	4690      	mov	r8, r2
20100b02:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b04:	c232      	stmia	r2!, {r1, r4, r5}
20100b06:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b08:	c232      	stmia	r2!, {r1, r4, r5}
20100b0a:	cb12      	ldmia	r3!, {r1, r4}
20100b0c:	c212      	stmia	r2!, {r1, r4}
20100b0e:	6802      	ldr	r2, [r0, #0]
20100b10:	6845      	ldr	r5, [r0, #4]
20100b12:	17d1      	asrs	r1, r2, #31
20100b14:	1853      	adds	r3, r2, r1
20100b16:	466e      	mov	r6, sp
20100b18:	404b      	eors	r3, r1
20100b1a:	2d00      	cmp	r5, #0
20100b1c:	dd6c      	ble.n	20100bf8 <cord_atan+0x120>
20100b1e:	195f      	adds	r7, r3, r5
20100b20:	1aeb      	subs	r3, r5, r3
20100b22:	9d00      	ldr	r5, [sp, #0]
20100b24:	2b00      	cmp	r3, #0
20100b26:	d100      	bne.n	20100b2a <cord_atan+0x52>
20100b28:	e094      	b.n	20100c54 <cord_atan+0x17c>
20100b2a:	105c      	asrs	r4, r3, #1
20100b2c:	2b00      	cmp	r3, #0
20100b2e:	dd68      	ble.n	20100c02 <cord_atan+0x12a>
20100b30:	1078      	asrs	r0, r7, #1
20100b32:	1a1b      	subs	r3, r3, r0
20100b34:	6870      	ldr	r0, [r6, #4]
20100b36:	19e4      	adds	r4, r4, r7
20100b38:	4681      	mov	r9, r0
20100b3a:	444d      	add	r5, r9
20100b3c:	2b00      	cmp	r3, #0
20100b3e:	d100      	bne.n	20100b42 <cord_atan+0x6a>
20100b40:	e08a      	b.n	20100c58 <cord_atan+0x180>
20100b42:	1098      	asrs	r0, r3, #2
20100b44:	2b00      	cmp	r3, #0
20100b46:	dd62      	ble.n	20100c0e <cord_atan+0x136>
20100b48:	1907      	adds	r7, r0, r4
20100b4a:	10a4      	asrs	r4, r4, #2
20100b4c:	1b18      	subs	r0, r3, r4
20100b4e:	68b3      	ldr	r3, [r6, #8]
20100b50:	4699      	mov	r9, r3
20100b52:	444d      	add	r5, r9
20100b54:	2800      	cmp	r0, #0
20100b56:	d100      	bne.n	20100b5a <cord_atan+0x82>
20100b58:	e081      	b.n	20100c5e <cord_atan+0x186>
20100b5a:	10c3      	asrs	r3, r0, #3
20100b5c:	2800      	cmp	r0, #0
20100b5e:	dd5c      	ble.n	20100c1a <cord_atan+0x142>
20100b60:	10fc      	asrs	r4, r7, #3
20100b62:	1b00      	subs	r0, r0, r4
20100b64:	68f4      	ldr	r4, [r6, #12]
20100b66:	19db      	adds	r3, r3, r7
20100b68:	46a1      	mov	r9, r4
20100b6a:	444d      	add	r5, r9
20100b6c:	2800      	cmp	r0, #0
20100b6e:	d100      	bne.n	20100b72 <cord_atan+0x9a>
20100b70:	e077      	b.n	20100c62 <cord_atan+0x18a>
20100b72:	1104      	asrs	r4, r0, #4
20100b74:	2800      	cmp	r0, #0
20100b76:	dd56      	ble.n	20100c26 <cord_atan+0x14e>
20100b78:	18e7      	adds	r7, r4, r3
20100b7a:	111b      	asrs	r3, r3, #4
20100b7c:	1ac4      	subs	r4, r0, r3
20100b7e:	6933      	ldr	r3, [r6, #16]
20100b80:	4699      	mov	r9, r3
20100b82:	444d      	add	r5, r9
20100b84:	2c00      	cmp	r4, #0
20100b86:	d100      	bne.n	20100b8a <cord_atan+0xb2>
20100b88:	e06e      	b.n	20100c68 <cord_atan+0x190>
20100b8a:	1163      	asrs	r3, r4, #5
20100b8c:	2c00      	cmp	r4, #0
20100b8e:	dd50      	ble.n	20100c32 <cord_atan+0x15a>
20100b90:	1178      	asrs	r0, r7, #5
20100b92:	1a20      	subs	r0, r4, r0
20100b94:	6974      	ldr	r4, [r6, #20]
20100b96:	19db      	adds	r3, r3, r7
20100b98:	46a1      	mov	r9, r4
20100b9a:	444d      	add	r5, r9
20100b9c:	2800      	cmp	r0, #0
20100b9e:	d065      	beq.n	20100c6c <cord_atan+0x194>
20100ba0:	1184      	asrs	r4, r0, #6
20100ba2:	2800      	cmp	r0, #0
20100ba4:	dd4b      	ble.n	20100c3e <cord_atan+0x166>
20100ba6:	18e7      	adds	r7, r4, r3
20100ba8:	119b      	asrs	r3, r3, #6
20100baa:	1ac0      	subs	r0, r0, r3
20100bac:	69b3      	ldr	r3, [r6, #24]
20100bae:	4699      	mov	r9, r3
20100bb0:	444d      	add	r5, r9
20100bb2:	2800      	cmp	r0, #0
20100bb4:	d05d      	beq.n	20100c72 <cord_atan+0x19a>
20100bb6:	dd48      	ble.n	20100c4a <cord_atan+0x172>
20100bb8:	69f3      	ldr	r3, [r6, #28]
20100bba:	11c0      	asrs	r0, r0, #7
20100bbc:	19c7      	adds	r7, r0, r7
20100bbe:	18ed      	adds	r5, r5, r3
20100bc0:	2307      	movs	r3, #7
20100bc2:	2a00      	cmp	r2, #0
20100bc4:	db14      	blt.n	20100bf0 <cord_atan+0x118>
20100bc6:	2d00      	cmp	r5, #0
20100bc8:	da03      	bge.n	20100bd2 <cord_atan+0xfa>
20100bca:	2280      	movs	r2, #128	; 0x80
20100bcc:	00d2      	lsls	r2, r2, #3
20100bce:	4691      	mov	r9, r2
20100bd0:	444d      	add	r5, r9
20100bd2:	4652      	mov	r2, sl
20100bd4:	6015      	str	r5, [r2, #0]
20100bd6:	4642      	mov	r2, r8
20100bd8:	009b      	lsls	r3, r3, #2
20100bda:	58d0      	ldr	r0, [r2, r3]
20100bdc:	4663      	mov	r3, ip
20100bde:	4378      	muls	r0, r7
20100be0:	1280      	asrs	r0, r0, #10
20100be2:	6018      	str	r0, [r3, #0]
20100be4:	b010      	add	sp, #64	; 0x40
20100be6:	bc1c      	pop	{r2, r3, r4}
20100be8:	4690      	mov	r8, r2
20100bea:	4699      	mov	r9, r3
20100bec:	46a2      	mov	sl, r4
20100bee:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100bf0:	2280      	movs	r2, #128	; 0x80
20100bf2:	0092      	lsls	r2, r2, #2
20100bf4:	1b55      	subs	r5, r2, r5
20100bf6:	e7e6      	b.n	20100bc6 <cord_atan+0xee>
20100bf8:	9900      	ldr	r1, [sp, #0]
20100bfa:	1b5f      	subs	r7, r3, r5
20100bfc:	195b      	adds	r3, r3, r5
20100bfe:	424d      	negs	r5, r1
20100c00:	e790      	b.n	20100b24 <cord_atan+0x4c>
20100c02:	6871      	ldr	r1, [r6, #4]
20100c04:	1078      	asrs	r0, r7, #1
20100c06:	1b3c      	subs	r4, r7, r4
20100c08:	18c3      	adds	r3, r0, r3
20100c0a:	1a6d      	subs	r5, r5, r1
20100c0c:	e796      	b.n	20100b3c <cord_atan+0x64>
20100c0e:	1a27      	subs	r7, r4, r0
20100c10:	10a0      	asrs	r0, r4, #2
20100c12:	18c0      	adds	r0, r0, r3
20100c14:	68b3      	ldr	r3, [r6, #8]
20100c16:	1aed      	subs	r5, r5, r3
20100c18:	e79c      	b.n	20100b54 <cord_atan+0x7c>
20100c1a:	68f1      	ldr	r1, [r6, #12]
20100c1c:	10fc      	asrs	r4, r7, #3
20100c1e:	1afb      	subs	r3, r7, r3
20100c20:	1820      	adds	r0, r4, r0
20100c22:	1a6d      	subs	r5, r5, r1
20100c24:	e7a2      	b.n	20100b6c <cord_atan+0x94>
20100c26:	1b1f      	subs	r7, r3, r4
20100c28:	111c      	asrs	r4, r3, #4
20100c2a:	6933      	ldr	r3, [r6, #16]
20100c2c:	1824      	adds	r4, r4, r0
20100c2e:	1aed      	subs	r5, r5, r3
20100c30:	e7a8      	b.n	20100b84 <cord_atan+0xac>
20100c32:	6971      	ldr	r1, [r6, #20]
20100c34:	1178      	asrs	r0, r7, #5
20100c36:	1afb      	subs	r3, r7, r3
20100c38:	1900      	adds	r0, r0, r4
20100c3a:	1a6d      	subs	r5, r5, r1
20100c3c:	e7ae      	b.n	20100b9c <cord_atan+0xc4>
20100c3e:	1b1f      	subs	r7, r3, r4
20100c40:	119b      	asrs	r3, r3, #6
20100c42:	1818      	adds	r0, r3, r0
20100c44:	69b3      	ldr	r3, [r6, #24]
20100c46:	1aed      	subs	r5, r5, r3
20100c48:	e7b3      	b.n	20100bb2 <cord_atan+0xda>
20100c4a:	69f3      	ldr	r3, [r6, #28]
20100c4c:	11c4      	asrs	r4, r0, #7
20100c4e:	1b3f      	subs	r7, r7, r4
20100c50:	1aed      	subs	r5, r5, r3
20100c52:	e7b5      	b.n	20100bc0 <cord_atan+0xe8>
20100c54:	2300      	movs	r3, #0
20100c56:	e7b4      	b.n	20100bc2 <cord_atan+0xea>
20100c58:	0027      	movs	r7, r4
20100c5a:	2301      	movs	r3, #1
20100c5c:	e7b1      	b.n	20100bc2 <cord_atan+0xea>
20100c5e:	2302      	movs	r3, #2
20100c60:	e7af      	b.n	20100bc2 <cord_atan+0xea>
20100c62:	001f      	movs	r7, r3
20100c64:	2303      	movs	r3, #3
20100c66:	e7ac      	b.n	20100bc2 <cord_atan+0xea>
20100c68:	2304      	movs	r3, #4
20100c6a:	e7aa      	b.n	20100bc2 <cord_atan+0xea>
20100c6c:	001f      	movs	r7, r3
20100c6e:	2305      	movs	r3, #5
20100c70:	e7a7      	b.n	20100bc2 <cord_atan+0xea>
20100c72:	2306      	movs	r3, #6
20100c74:	e7a5      	b.n	20100bc2 <cord_atan+0xea>
20100c76:	46c0      	nop			; (mov r8, r8)
20100c78:	00001f36 	.word	0x00001f36

20100c7c <sinpwm>:
20100c7c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100c7e:	465f      	mov	r7, fp
20100c80:	4656      	mov	r6, sl
20100c82:	4644      	mov	r4, r8
20100c84:	464d      	mov	r5, r9
20100c86:	b4f0      	push	{r4, r5, r6, r7}
20100c88:	4b8c      	ldr	r3, [pc, #560]	; (20100ebc <sinpwm+0x240>)
20100c8a:	b091      	sub	sp, #68	; 0x44
20100c8c:	447b      	add	r3, pc
20100c8e:	001d      	movs	r5, r3
20100c90:	466c      	mov	r4, sp
20100c92:	4688      	mov	r8, r1
20100c94:	4693      	mov	fp, r2
20100c96:	469c      	mov	ip, r3
20100c98:	cd0e      	ldmia	r5!, {r1, r2, r3}
20100c9a:	c40e      	stmia	r4!, {r1, r2, r3}
20100c9c:	cd0e      	ldmia	r5!, {r1, r2, r3}
20100c9e:	c40e      	stmia	r4!, {r1, r2, r3}
20100ca0:	cd0c      	ldmia	r5!, {r2, r3}
20100ca2:	c40c      	stmia	r4!, {r2, r3}
20100ca4:	ab08      	add	r3, sp, #32
20100ca6:	469a      	mov	sl, r3
20100ca8:	4663      	mov	r3, ip
20100caa:	4654      	mov	r4, sl
20100cac:	3320      	adds	r3, #32
20100cae:	cb26      	ldmia	r3!, {r1, r2, r5}
20100cb0:	c426      	stmia	r4!, {r1, r2, r5}
20100cb2:	cb26      	ldmia	r3!, {r1, r2, r5}
20100cb4:	c426      	stmia	r4!, {r1, r2, r5}
20100cb6:	cb06      	ldmia	r3!, {r1, r2}
20100cb8:	c406      	stmia	r4!, {r1, r2}
20100cba:	4643      	mov	r3, r8
20100cbc:	681b      	ldr	r3, [r3, #0]
20100cbe:	4e80      	ldr	r6, [pc, #512]	; (20100ec0 <sinpwm+0x244>)
20100cc0:	17da      	asrs	r2, r3, #31
20100cc2:	189c      	adds	r4, r3, r2
20100cc4:	469c      	mov	ip, r3
20100cc6:	4643      	mov	r3, r8
20100cc8:	6859      	ldr	r1, [r3, #4]
20100cca:	447e      	add	r6, pc
20100ccc:	466f      	mov	r7, sp
20100cce:	4054      	eors	r4, r2
20100cd0:	2900      	cmp	r1, #0
20100cd2:	dc00      	bgt.n	20100cd6 <sinpwm+0x5a>
20100cd4:	e0a9      	b.n	20100e2a <sinpwm+0x1ae>
20100cd6:	1863      	adds	r3, r4, r1
20100cd8:	1b09      	subs	r1, r1, r4
20100cda:	4688      	mov	r8, r1
20100cdc:	9c00      	ldr	r4, [sp, #0]
20100cde:	4641      	mov	r1, r8
20100ce0:	2900      	cmp	r1, #0
20100ce2:	d100      	bne.n	20100ce6 <sinpwm+0x6a>
20100ce4:	e0d8      	b.n	20100e98 <sinpwm+0x21c>
20100ce6:	dc00      	bgt.n	20100cea <sinpwm+0x6e>
20100ce8:	e0a5      	b.n	20100e36 <sinpwm+0x1ba>
20100cea:	4641      	mov	r1, r8
20100cec:	4642      	mov	r2, r8
20100cee:	1049      	asrs	r1, r1, #1
20100cf0:	18c9      	adds	r1, r1, r3
20100cf2:	105b      	asrs	r3, r3, #1
20100cf4:	1ad3      	subs	r3, r2, r3
20100cf6:	4698      	mov	r8, r3
20100cf8:	687b      	ldr	r3, [r7, #4]
20100cfa:	4699      	mov	r9, r3
20100cfc:	444c      	add	r4, r9
20100cfe:	4643      	mov	r3, r8
20100d00:	2b00      	cmp	r3, #0
20100d02:	d100      	bne.n	20100d06 <sinpwm+0x8a>
20100d04:	e0ca      	b.n	20100e9c <sinpwm+0x220>
20100d06:	dc00      	bgt.n	20100d0a <sinpwm+0x8e>
20100d08:	e09c      	b.n	20100e44 <sinpwm+0x1c8>
20100d0a:	4643      	mov	r3, r8
20100d0c:	4642      	mov	r2, r8
20100d0e:	109b      	asrs	r3, r3, #2
20100d10:	185b      	adds	r3, r3, r1
20100d12:	1089      	asrs	r1, r1, #2
20100d14:	1a52      	subs	r2, r2, r1
20100d16:	4690      	mov	r8, r2
20100d18:	68ba      	ldr	r2, [r7, #8]
20100d1a:	4691      	mov	r9, r2
20100d1c:	444c      	add	r4, r9
20100d1e:	4641      	mov	r1, r8
20100d20:	2900      	cmp	r1, #0
20100d22:	d100      	bne.n	20100d26 <sinpwm+0xaa>
20100d24:	e0bd      	b.n	20100ea2 <sinpwm+0x226>
20100d26:	4642      	mov	r2, r8
20100d28:	dc00      	bgt.n	20100d2c <sinpwm+0xb0>
20100d2a:	e092      	b.n	20100e52 <sinpwm+0x1d6>
20100d2c:	10c9      	asrs	r1, r1, #3
20100d2e:	18c9      	adds	r1, r1, r3
20100d30:	10db      	asrs	r3, r3, #3
20100d32:	1ad3      	subs	r3, r2, r3
20100d34:	4698      	mov	r8, r3
20100d36:	68fb      	ldr	r3, [r7, #12]
20100d38:	4699      	mov	r9, r3
20100d3a:	444c      	add	r4, r9
20100d3c:	4643      	mov	r3, r8
20100d3e:	2b00      	cmp	r3, #0
20100d40:	d100      	bne.n	20100d44 <sinpwm+0xc8>
20100d42:	e0b0      	b.n	20100ea6 <sinpwm+0x22a>
20100d44:	dc00      	bgt.n	20100d48 <sinpwm+0xcc>
20100d46:	e08b      	b.n	20100e60 <sinpwm+0x1e4>
20100d48:	4643      	mov	r3, r8
20100d4a:	4642      	mov	r2, r8
20100d4c:	111b      	asrs	r3, r3, #4
20100d4e:	185b      	adds	r3, r3, r1
20100d50:	1109      	asrs	r1, r1, #4
20100d52:	1a51      	subs	r1, r2, r1
20100d54:	693a      	ldr	r2, [r7, #16]
20100d56:	4690      	mov	r8, r2
20100d58:	4444      	add	r4, r8
20100d5a:	2900      	cmp	r1, #0
20100d5c:	d100      	bne.n	20100d60 <sinpwm+0xe4>
20100d5e:	e0a5      	b.n	20100eac <sinpwm+0x230>
20100d60:	114a      	asrs	r2, r1, #5
20100d62:	4690      	mov	r8, r2
20100d64:	2900      	cmp	r1, #0
20100d66:	dc00      	bgt.n	20100d6a <sinpwm+0xee>
20100d68:	e081      	b.n	20100e6e <sinpwm+0x1f2>
20100d6a:	4498      	add	r8, r3
20100d6c:	115b      	asrs	r3, r3, #5
20100d6e:	1ac9      	subs	r1, r1, r3
20100d70:	697b      	ldr	r3, [r7, #20]
20100d72:	46c1      	mov	r9, r8
20100d74:	4698      	mov	r8, r3
20100d76:	4444      	add	r4, r8
20100d78:	2900      	cmp	r1, #0
20100d7a:	d100      	bne.n	20100d7e <sinpwm+0x102>
20100d7c:	e098      	b.n	20100eb0 <sinpwm+0x234>
20100d7e:	118b      	asrs	r3, r1, #6
20100d80:	2900      	cmp	r1, #0
20100d82:	dc00      	bgt.n	20100d86 <sinpwm+0x10a>
20100d84:	e07a      	b.n	20100e7c <sinpwm+0x200>
20100d86:	444b      	add	r3, r9
20100d88:	4698      	mov	r8, r3
20100d8a:	464b      	mov	r3, r9
20100d8c:	119b      	asrs	r3, r3, #6
20100d8e:	1ac9      	subs	r1, r1, r3
20100d90:	69bb      	ldr	r3, [r7, #24]
20100d92:	4699      	mov	r9, r3
20100d94:	444c      	add	r4, r9
20100d96:	2900      	cmp	r1, #0
20100d98:	d100      	bne.n	20100d9c <sinpwm+0x120>
20100d9a:	e08c      	b.n	20100eb6 <sinpwm+0x23a>
20100d9c:	dc00      	bgt.n	20100da0 <sinpwm+0x124>
20100d9e:	e075      	b.n	20100e8c <sinpwm+0x210>
20100da0:	11c9      	asrs	r1, r1, #7
20100da2:	000b      	movs	r3, r1
20100da4:	69f9      	ldr	r1, [r7, #28]
20100da6:	4443      	add	r3, r8
20100da8:	1864      	adds	r4, r4, r1
20100daa:	2107      	movs	r1, #7
20100dac:	4667      	mov	r7, ip
20100dae:	2f00      	cmp	r7, #0
20100db0:	db37      	blt.n	20100e22 <sinpwm+0x1a6>
20100db2:	2c00      	cmp	r4, #0
20100db4:	da03      	bge.n	20100dbe <sinpwm+0x142>
20100db6:	2280      	movs	r2, #128	; 0x80
20100db8:	00d2      	lsls	r2, r2, #3
20100dba:	4694      	mov	ip, r2
20100dbc:	4464      	add	r4, ip
20100dbe:	4652      	mov	r2, sl
20100dc0:	0089      	lsls	r1, r1, #2
20100dc2:	5851      	ldr	r1, [r2, r1]
20100dc4:	0022      	movs	r2, r4
20100dc6:	434b      	muls	r3, r1
20100dc8:	21fa      	movs	r1, #250	; 0xfa
20100dca:	445a      	add	r2, fp
20100dcc:	0592      	lsls	r2, r2, #22
20100dce:	151b      	asrs	r3, r3, #20
20100dd0:	0d92      	lsrs	r2, r2, #22
20100dd2:	0049      	lsls	r1, r1, #1
20100dd4:	428b      	cmp	r3, r1
20100dd6:	dd21      	ble.n	20100e1c <sinpwm+0x1a0>
20100dd8:	000b      	movs	r3, r1
20100dda:	2501      	movs	r5, #1
20100ddc:	4f39      	ldr	r7, [pc, #228]	; (20100ec4 <sinpwm+0x248>)
20100dde:	493a      	ldr	r1, [pc, #232]	; (20100ec8 <sinpwm+0x24c>)
20100de0:	5874      	ldr	r4, [r6, r1]
20100de2:	0091      	lsls	r1, r2, #2
20100de4:	5909      	ldr	r1, [r1, r4]
20100de6:	434b      	muls	r3, r1
20100de8:	129b      	asrs	r3, r3, #10
20100dea:	6003      	str	r3, [r0, #0]
20100dec:	0013      	movs	r3, r2
20100dee:	33aa      	adds	r3, #170	; 0xaa
20100df0:	059b      	lsls	r3, r3, #22
20100df2:	0d1b      	lsrs	r3, r3, #20
20100df4:	5919      	ldr	r1, [r3, r4]
20100df6:	4b35      	ldr	r3, [pc, #212]	; (20100ecc <sinpwm+0x250>)
20100df8:	4379      	muls	r1, r7
20100dfa:	1a9a      	subs	r2, r3, r2
20100dfc:	0592      	lsls	r2, r2, #22
20100dfe:	0d12      	lsrs	r2, r2, #20
20100e00:	5913      	ldr	r3, [r2, r4]
20100e02:	1289      	asrs	r1, r1, #10
20100e04:	437b      	muls	r3, r7
20100e06:	129b      	asrs	r3, r3, #10
20100e08:	6041      	str	r1, [r0, #4]
20100e0a:	6083      	str	r3, [r0, #8]
20100e0c:	0028      	movs	r0, r5
20100e0e:	b011      	add	sp, #68	; 0x44
20100e10:	bc3c      	pop	{r2, r3, r4, r5}
20100e12:	4690      	mov	r8, r2
20100e14:	4699      	mov	r9, r3
20100e16:	46a2      	mov	sl, r4
20100e18:	46ab      	mov	fp, r5
20100e1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100e1c:	425f      	negs	r7, r3
20100e1e:	2500      	movs	r5, #0
20100e20:	e7dd      	b.n	20100dde <sinpwm+0x162>
20100e22:	2780      	movs	r7, #128	; 0x80
20100e24:	00bf      	lsls	r7, r7, #2
20100e26:	1b3c      	subs	r4, r7, r4
20100e28:	e7c3      	b.n	20100db2 <sinpwm+0x136>
20100e2a:	46a0      	mov	r8, r4
20100e2c:	9a00      	ldr	r2, [sp, #0]
20100e2e:	1a63      	subs	r3, r4, r1
20100e30:	4488      	add	r8, r1
20100e32:	4254      	negs	r4, r2
20100e34:	e753      	b.n	20100cde <sinpwm+0x62>
20100e36:	1049      	asrs	r1, r1, #1
20100e38:	1a59      	subs	r1, r3, r1
20100e3a:	105b      	asrs	r3, r3, #1
20100e3c:	4498      	add	r8, r3
20100e3e:	687b      	ldr	r3, [r7, #4]
20100e40:	1ae4      	subs	r4, r4, r3
20100e42:	e75c      	b.n	20100cfe <sinpwm+0x82>
20100e44:	109b      	asrs	r3, r3, #2
20100e46:	68ba      	ldr	r2, [r7, #8]
20100e48:	1acb      	subs	r3, r1, r3
20100e4a:	1089      	asrs	r1, r1, #2
20100e4c:	4488      	add	r8, r1
20100e4e:	1aa4      	subs	r4, r4, r2
20100e50:	e765      	b.n	20100d1e <sinpwm+0xa2>
20100e52:	10c9      	asrs	r1, r1, #3
20100e54:	1a59      	subs	r1, r3, r1
20100e56:	10db      	asrs	r3, r3, #3
20100e58:	4498      	add	r8, r3
20100e5a:	68fb      	ldr	r3, [r7, #12]
20100e5c:	1ae4      	subs	r4, r4, r3
20100e5e:	e76d      	b.n	20100d3c <sinpwm+0xc0>
20100e60:	111b      	asrs	r3, r3, #4
20100e62:	693a      	ldr	r2, [r7, #16]
20100e64:	1acb      	subs	r3, r1, r3
20100e66:	1109      	asrs	r1, r1, #4
20100e68:	4441      	add	r1, r8
20100e6a:	1aa4      	subs	r4, r4, r2
20100e6c:	e775      	b.n	20100d5a <sinpwm+0xde>
20100e6e:	1a9a      	subs	r2, r3, r2
20100e70:	115b      	asrs	r3, r3, #5
20100e72:	1859      	adds	r1, r3, r1
20100e74:	697b      	ldr	r3, [r7, #20]
20100e76:	4691      	mov	r9, r2
20100e78:	1ae4      	subs	r4, r4, r3
20100e7a:	e77d      	b.n	20100d78 <sinpwm+0xfc>
20100e7c:	464a      	mov	r2, r9
20100e7e:	1ad3      	subs	r3, r2, r3
20100e80:	4698      	mov	r8, r3
20100e82:	1193      	asrs	r3, r2, #6
20100e84:	1859      	adds	r1, r3, r1
20100e86:	69bb      	ldr	r3, [r7, #24]
20100e88:	1ae4      	subs	r4, r4, r3
20100e8a:	e784      	b.n	20100d96 <sinpwm+0x11a>
20100e8c:	4643      	mov	r3, r8
20100e8e:	11c9      	asrs	r1, r1, #7
20100e90:	1a5b      	subs	r3, r3, r1
20100e92:	69f9      	ldr	r1, [r7, #28]
20100e94:	1a64      	subs	r4, r4, r1
20100e96:	e788      	b.n	20100daa <sinpwm+0x12e>
20100e98:	2100      	movs	r1, #0
20100e9a:	e787      	b.n	20100dac <sinpwm+0x130>
20100e9c:	000b      	movs	r3, r1
20100e9e:	2101      	movs	r1, #1
20100ea0:	e784      	b.n	20100dac <sinpwm+0x130>
20100ea2:	2102      	movs	r1, #2
20100ea4:	e782      	b.n	20100dac <sinpwm+0x130>
20100ea6:	000b      	movs	r3, r1
20100ea8:	2103      	movs	r1, #3
20100eaa:	e77f      	b.n	20100dac <sinpwm+0x130>
20100eac:	2104      	movs	r1, #4
20100eae:	e77d      	b.n	20100dac <sinpwm+0x130>
20100eb0:	464b      	mov	r3, r9
20100eb2:	2105      	movs	r1, #5
20100eb4:	e77a      	b.n	20100dac <sinpwm+0x130>
20100eb6:	4643      	mov	r3, r8
20100eb8:	2106      	movs	r1, #6
20100eba:	e777      	b.n	20100dac <sinpwm+0x130>
20100ebc:	00001d90 	.word	0x00001d90
20100ec0:	ffeff3be 	.word	0xffeff3be
20100ec4:	fffffe0c 	.word	0xfffffe0c
20100ec8:	00000000 	.word	0x00000000
20100ecc:	000004aa 	.word	0x000004aa

20100ed0 <svpwm>:
20100ed0:	b5f0      	push	{r4, r5, r6, r7, lr}
20100ed2:	465f      	mov	r7, fp
20100ed4:	4656      	mov	r6, sl
20100ed6:	4644      	mov	r4, r8
20100ed8:	464d      	mov	r5, r9
20100eda:	b4f0      	push	{r4, r5, r6, r7}
20100edc:	0005      	movs	r5, r0
20100ede:	48d0      	ldr	r0, [pc, #832]	; (20101220 <svpwm+0x350>)
20100ee0:	b091      	sub	sp, #68	; 0x44
20100ee2:	4478      	add	r0, pc
20100ee4:	0006      	movs	r6, r0
20100ee6:	466c      	mov	r4, sp
20100ee8:	4bce      	ldr	r3, [pc, #824]	; (20101224 <svpwm+0x354>)
20100eea:	4693      	mov	fp, r2
20100eec:	447b      	add	r3, pc
20100eee:	469a      	mov	sl, r3
20100ef0:	468c      	mov	ip, r1
20100ef2:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100ef4:	c40e      	stmia	r4!, {r1, r2, r3}
20100ef6:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100ef8:	c40e      	stmia	r4!, {r1, r2, r3}
20100efa:	ce0c      	ldmia	r6!, {r2, r3}
20100efc:	c40c      	stmia	r4!, {r2, r3}
20100efe:	ae08      	add	r6, sp, #32
20100f00:	0034      	movs	r4, r6
20100f02:	3020      	adds	r0, #32
20100f04:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f06:	c40e      	stmia	r4!, {r1, r2, r3}
20100f08:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f0a:	c40e      	stmia	r4!, {r1, r2, r3}
20100f0c:	c80c      	ldmia	r0!, {r2, r3}
20100f0e:	c40c      	stmia	r4!, {r2, r3}
20100f10:	4663      	mov	r3, ip
20100f12:	681c      	ldr	r4, [r3, #0]
20100f14:	466f      	mov	r7, sp
20100f16:	17e2      	asrs	r2, r4, #31
20100f18:	18a3      	adds	r3, r4, r2
20100f1a:	4053      	eors	r3, r2
20100f1c:	4698      	mov	r8, r3
20100f1e:	4663      	mov	r3, ip
20100f20:	685b      	ldr	r3, [r3, #4]
20100f22:	2b00      	cmp	r3, #0
20100f24:	dc00      	bgt.n	20100f28 <svpwm+0x58>
20100f26:	e0b5      	b.n	20101094 <svpwm+0x1c4>
20100f28:	4641      	mov	r1, r8
20100f2a:	18c8      	adds	r0, r1, r3
20100f2c:	1a5b      	subs	r3, r3, r1
20100f2e:	4698      	mov	r8, r3
20100f30:	9b00      	ldr	r3, [sp, #0]
20100f32:	4641      	mov	r1, r8
20100f34:	2900      	cmp	r1, #0
20100f36:	d100      	bne.n	20100f3a <svpwm+0x6a>
20100f38:	e15f      	b.n	201011fa <svpwm+0x32a>
20100f3a:	dc00      	bgt.n	20100f3e <svpwm+0x6e>
20100f3c:	e0b0      	b.n	201010a0 <svpwm+0x1d0>
20100f3e:	4641      	mov	r1, r8
20100f40:	1049      	asrs	r1, r1, #1
20100f42:	4689      	mov	r9, r1
20100f44:	1041      	asrs	r1, r0, #1
20100f46:	4481      	add	r9, r0
20100f48:	4640      	mov	r0, r8
20100f4a:	1a41      	subs	r1, r0, r1
20100f4c:	4688      	mov	r8, r1
20100f4e:	6879      	ldr	r1, [r7, #4]
20100f50:	468c      	mov	ip, r1
20100f52:	4463      	add	r3, ip
20100f54:	4641      	mov	r1, r8
20100f56:	2900      	cmp	r1, #0
20100f58:	d100      	bne.n	20100f5c <svpwm+0x8c>
20100f5a:	e150      	b.n	201011fe <svpwm+0x32e>
20100f5c:	dc00      	bgt.n	20100f60 <svpwm+0x90>
20100f5e:	e0a7      	b.n	201010b0 <svpwm+0x1e0>
20100f60:	4641      	mov	r1, r8
20100f62:	1089      	asrs	r1, r1, #2
20100f64:	4449      	add	r1, r9
20100f66:	0008      	movs	r0, r1
20100f68:	4649      	mov	r1, r9
20100f6a:	4642      	mov	r2, r8
20100f6c:	1089      	asrs	r1, r1, #2
20100f6e:	1a51      	subs	r1, r2, r1
20100f70:	68ba      	ldr	r2, [r7, #8]
20100f72:	4688      	mov	r8, r1
20100f74:	4694      	mov	ip, r2
20100f76:	4463      	add	r3, ip
20100f78:	4641      	mov	r1, r8
20100f7a:	2900      	cmp	r1, #0
20100f7c:	d100      	bne.n	20100f80 <svpwm+0xb0>
20100f7e:	e141      	b.n	20101204 <svpwm+0x334>
20100f80:	4642      	mov	r2, r8
20100f82:	dc00      	bgt.n	20100f86 <svpwm+0xb6>
20100f84:	e09c      	b.n	201010c0 <svpwm+0x1f0>
20100f86:	10c9      	asrs	r1, r1, #3
20100f88:	1809      	adds	r1, r1, r0
20100f8a:	10c0      	asrs	r0, r0, #3
20100f8c:	1a12      	subs	r2, r2, r0
20100f8e:	4690      	mov	r8, r2
20100f90:	68fa      	ldr	r2, [r7, #12]
20100f92:	4694      	mov	ip, r2
20100f94:	4463      	add	r3, ip
20100f96:	4640      	mov	r0, r8
20100f98:	2800      	cmp	r0, #0
20100f9a:	d100      	bne.n	20100f9e <svpwm+0xce>
20100f9c:	e134      	b.n	20101208 <svpwm+0x338>
20100f9e:	4642      	mov	r2, r8
20100fa0:	dc00      	bgt.n	20100fa4 <svpwm+0xd4>
20100fa2:	e094      	b.n	201010ce <svpwm+0x1fe>
20100fa4:	1100      	asrs	r0, r0, #4
20100fa6:	1840      	adds	r0, r0, r1
20100fa8:	1109      	asrs	r1, r1, #4
20100faa:	1a52      	subs	r2, r2, r1
20100fac:	4690      	mov	r8, r2
20100fae:	693a      	ldr	r2, [r7, #16]
20100fb0:	4694      	mov	ip, r2
20100fb2:	4463      	add	r3, ip
20100fb4:	4641      	mov	r1, r8
20100fb6:	2900      	cmp	r1, #0
20100fb8:	d100      	bne.n	20100fbc <svpwm+0xec>
20100fba:	e128      	b.n	2010120e <svpwm+0x33e>
20100fbc:	4642      	mov	r2, r8
20100fbe:	dc00      	bgt.n	20100fc2 <svpwm+0xf2>
20100fc0:	e08c      	b.n	201010dc <svpwm+0x20c>
20100fc2:	1149      	asrs	r1, r1, #5
20100fc4:	4689      	mov	r9, r1
20100fc6:	1141      	asrs	r1, r0, #5
20100fc8:	1a51      	subs	r1, r2, r1
20100fca:	697a      	ldr	r2, [r7, #20]
20100fcc:	4481      	add	r9, r0
20100fce:	4694      	mov	ip, r2
20100fd0:	4463      	add	r3, ip
20100fd2:	2900      	cmp	r1, #0
20100fd4:	d100      	bne.n	20100fd8 <svpwm+0x108>
20100fd6:	e11c      	b.n	20101212 <svpwm+0x342>
20100fd8:	1188      	asrs	r0, r1, #6
20100fda:	2900      	cmp	r1, #0
20100fdc:	dc00      	bgt.n	20100fe0 <svpwm+0x110>
20100fde:	e086      	b.n	201010ee <svpwm+0x21e>
20100fe0:	464a      	mov	r2, r9
20100fe2:	4448      	add	r0, r9
20100fe4:	4680      	mov	r8, r0
20100fe6:	1190      	asrs	r0, r2, #6
20100fe8:	69ba      	ldr	r2, [r7, #24]
20100fea:	1a09      	subs	r1, r1, r0
20100fec:	4694      	mov	ip, r2
20100fee:	4463      	add	r3, ip
20100ff0:	2900      	cmp	r1, #0
20100ff2:	d100      	bne.n	20100ff6 <svpwm+0x126>
20100ff4:	e110      	b.n	20101218 <svpwm+0x348>
20100ff6:	dc00      	bgt.n	20100ffa <svpwm+0x12a>
20100ff8:	e0e2      	b.n	201011c0 <svpwm+0x2f0>
20100ffa:	11c9      	asrs	r1, r1, #7
20100ffc:	4441      	add	r1, r8
20100ffe:	0008      	movs	r0, r1
20101000:	69f9      	ldr	r1, [r7, #28]
20101002:	185b      	adds	r3, r3, r1
20101004:	2107      	movs	r1, #7
20101006:	2c00      	cmp	r4, #0
20101008:	db40      	blt.n	2010108c <svpwm+0x1bc>
2010100a:	2b00      	cmp	r3, #0
2010100c:	da03      	bge.n	20101016 <svpwm+0x146>
2010100e:	2280      	movs	r2, #128	; 0x80
20101010:	00d2      	lsls	r2, r2, #3
20101012:	4694      	mov	ip, r2
20101014:	4463      	add	r3, ip
20101016:	22fa      	movs	r2, #250	; 0xfa
20101018:	0089      	lsls	r1, r1, #2
2010101a:	5871      	ldr	r1, [r6, r1]
2010101c:	445b      	add	r3, fp
2010101e:	4341      	muls	r1, r0
20101020:	059b      	lsls	r3, r3, #22
20101022:	1509      	asrs	r1, r1, #20
20101024:	0d9b      	lsrs	r3, r3, #22
20101026:	0052      	lsls	r2, r2, #1
20101028:	2400      	movs	r4, #0
2010102a:	4291      	cmp	r1, r2
2010102c:	dd01      	ble.n	20101032 <svpwm+0x162>
2010102e:	0011      	movs	r1, r2
20101030:	3401      	adds	r4, #1
20101032:	0058      	lsls	r0, r3, #1
20101034:	18c0      	adds	r0, r0, r3
20101036:	1240      	asrs	r0, r0, #9
20101038:	3801      	subs	r0, #1
2010103a:	4a7b      	ldr	r2, [pc, #492]	; (20101228 <svpwm+0x358>)
2010103c:	2804      	cmp	r0, #4
2010103e:	d920      	bls.n	20101082 <svpwm+0x1b2>
20101040:	26c0      	movs	r6, #192	; 0xc0
20101042:	4650      	mov	r0, sl
20101044:	00b6      	lsls	r6, r6, #2
20101046:	46b4      	mov	ip, r6
20101048:	5880      	ldr	r0, [r0, r2]
2010104a:	4a78      	ldr	r2, [pc, #480]	; (2010122c <svpwm+0x35c>)
2010104c:	1ad2      	subs	r2, r2, r3
2010104e:	4463      	add	r3, ip
20101050:	0592      	lsls	r2, r2, #22
20101052:	059b      	lsls	r3, r3, #22
20101054:	0d12      	lsrs	r2, r2, #20
20101056:	0d1b      	lsrs	r3, r3, #20
20101058:	581b      	ldr	r3, [r3, r0]
2010105a:	5812      	ldr	r2, [r2, r0]
2010105c:	434a      	muls	r2, r1
2010105e:	4359      	muls	r1, r3
20101060:	1292      	asrs	r2, r2, #10
20101062:	1289      	asrs	r1, r1, #10
20101064:	1853      	adds	r3, r2, r1
20101066:	602b      	str	r3, [r5, #0]
20101068:	1a8b      	subs	r3, r1, r2
2010106a:	4252      	negs	r2, r2
2010106c:	1a52      	subs	r2, r2, r1
2010106e:	606b      	str	r3, [r5, #4]
20101070:	60aa      	str	r2, [r5, #8]
20101072:	0020      	movs	r0, r4
20101074:	b011      	add	sp, #68	; 0x44
20101076:	bc3c      	pop	{r2, r3, r4, r5}
20101078:	4690      	mov	r8, r2
2010107a:	4699      	mov	r9, r3
2010107c:	46a2      	mov	sl, r4
2010107e:	46ab      	mov	fp, r5
20101080:	bdf0      	pop	{r4, r5, r6, r7, pc}
20101082:	f000 fa71 	bl	20101568 <__gnu_thumb1_case_uqi>
20101086:	856c      	.short	0x856c
20101088:	553d      	.short	0x553d
2010108a:	a3          	.byte	0xa3
2010108b:	00          	.byte	0x00
2010108c:	2480      	movs	r4, #128	; 0x80
2010108e:	00a4      	lsls	r4, r4, #2
20101090:	1ae3      	subs	r3, r4, r3
20101092:	e7ba      	b.n	2010100a <svpwm+0x13a>
20101094:	4642      	mov	r2, r8
20101096:	4498      	add	r8, r3
20101098:	1ad0      	subs	r0, r2, r3
2010109a:	9b00      	ldr	r3, [sp, #0]
2010109c:	425b      	negs	r3, r3
2010109e:	e748      	b.n	20100f32 <svpwm+0x62>
201010a0:	1049      	asrs	r1, r1, #1
201010a2:	1a42      	subs	r2, r0, r1
201010a4:	4691      	mov	r9, r2
201010a6:	687a      	ldr	r2, [r7, #4]
201010a8:	1041      	asrs	r1, r0, #1
201010aa:	4488      	add	r8, r1
201010ac:	1a9b      	subs	r3, r3, r2
201010ae:	e751      	b.n	20100f54 <svpwm+0x84>
201010b0:	464a      	mov	r2, r9
201010b2:	1089      	asrs	r1, r1, #2
201010b4:	1a50      	subs	r0, r2, r1
201010b6:	1091      	asrs	r1, r2, #2
201010b8:	68ba      	ldr	r2, [r7, #8]
201010ba:	4488      	add	r8, r1
201010bc:	1a9b      	subs	r3, r3, r2
201010be:	e75b      	b.n	20100f78 <svpwm+0xa8>
201010c0:	10c9      	asrs	r1, r1, #3
201010c2:	68fa      	ldr	r2, [r7, #12]
201010c4:	1a41      	subs	r1, r0, r1
201010c6:	10c0      	asrs	r0, r0, #3
201010c8:	4480      	add	r8, r0
201010ca:	1a9b      	subs	r3, r3, r2
201010cc:	e763      	b.n	20100f96 <svpwm+0xc6>
201010ce:	1100      	asrs	r0, r0, #4
201010d0:	693a      	ldr	r2, [r7, #16]
201010d2:	1a08      	subs	r0, r1, r0
201010d4:	1109      	asrs	r1, r1, #4
201010d6:	4488      	add	r8, r1
201010d8:	1a9b      	subs	r3, r3, r2
201010da:	e76b      	b.n	20100fb4 <svpwm+0xe4>
201010dc:	1149      	asrs	r1, r1, #5
201010de:	1a42      	subs	r2, r0, r1
201010e0:	1140      	asrs	r0, r0, #5
201010e2:	0001      	movs	r1, r0
201010e4:	4691      	mov	r9, r2
201010e6:	697a      	ldr	r2, [r7, #20]
201010e8:	4441      	add	r1, r8
201010ea:	1a9b      	subs	r3, r3, r2
201010ec:	e771      	b.n	20100fd2 <svpwm+0x102>
201010ee:	464a      	mov	r2, r9
201010f0:	1a12      	subs	r2, r2, r0
201010f2:	4690      	mov	r8, r2
201010f4:	464a      	mov	r2, r9
201010f6:	1190      	asrs	r0, r2, #6
201010f8:	69ba      	ldr	r2, [r7, #24]
201010fa:	1841      	adds	r1, r0, r1
201010fc:	1a9b      	subs	r3, r3, r2
201010fe:	e777      	b.n	20100ff0 <svpwm+0x120>
20101100:	4650      	mov	r0, sl
20101102:	5880      	ldr	r0, [r0, r2]
20101104:	4a4a      	ldr	r2, [pc, #296]	; (20101230 <svpwm+0x360>)
20101106:	1ad2      	subs	r2, r2, r3
20101108:	3301      	adds	r3, #1
2010110a:	0592      	lsls	r2, r2, #22
2010110c:	33ff      	adds	r3, #255	; 0xff
2010110e:	0d12      	lsrs	r2, r2, #20
20101110:	059b      	lsls	r3, r3, #22
20101112:	5812      	ldr	r2, [r2, r0]
20101114:	0d1b      	lsrs	r3, r3, #20
20101116:	581b      	ldr	r3, [r3, r0]
20101118:	434a      	muls	r2, r1
2010111a:	434b      	muls	r3, r1
2010111c:	1292      	asrs	r2, r2, #10
2010111e:	1299      	asrs	r1, r3, #10
20101120:	4253      	negs	r3, r2
20101122:	1a5b      	subs	r3, r3, r1
20101124:	602b      	str	r3, [r5, #0]
20101126:	1a53      	subs	r3, r2, r1
20101128:	1851      	adds	r1, r2, r1
2010112a:	606b      	str	r3, [r5, #4]
2010112c:	60a9      	str	r1, [r5, #8]
2010112e:	e7a0      	b.n	20101072 <svpwm+0x1a2>
20101130:	4650      	mov	r0, sl
20101132:	5880      	ldr	r0, [r0, r2]
20101134:	4a3f      	ldr	r2, [pc, #252]	; (20101234 <svpwm+0x364>)
20101136:	1ad2      	subs	r2, r2, r3
20101138:	3356      	adds	r3, #86	; 0x56
2010113a:	0592      	lsls	r2, r2, #22
2010113c:	059b      	lsls	r3, r3, #22
2010113e:	0d12      	lsrs	r2, r2, #20
20101140:	0d1b      	lsrs	r3, r3, #20
20101142:	5816      	ldr	r6, [r2, r0]
20101144:	581b      	ldr	r3, [r3, r0]
20101146:	434e      	muls	r6, r1
20101148:	434b      	muls	r3, r1
2010114a:	12b6      	asrs	r6, r6, #10
2010114c:	1299      	asrs	r1, r3, #10
2010114e:	1b8b      	subs	r3, r1, r6
20101150:	602b      	str	r3, [r5, #0]
20101152:	4273      	negs	r3, r6
20101154:	1a5b      	subs	r3, r3, r1
20101156:	1871      	adds	r1, r6, r1
20101158:	606b      	str	r3, [r5, #4]
2010115a:	60a9      	str	r1, [r5, #8]
2010115c:	e789      	b.n	20101072 <svpwm+0x1a2>
2010115e:	4650      	mov	r0, sl
20101160:	5886      	ldr	r6, [r0, r2]
20101162:	4a35      	ldr	r2, [pc, #212]	; (20101238 <svpwm+0x368>)
20101164:	1ad2      	subs	r2, r2, r3
20101166:	0592      	lsls	r2, r2, #22
20101168:	0d12      	lsrs	r2, r2, #20
2010116a:	5990      	ldr	r0, [r2, r6]
2010116c:	4a33      	ldr	r2, [pc, #204]	; (2010123c <svpwm+0x36c>)
2010116e:	4348      	muls	r0, r1
20101170:	4694      	mov	ip, r2
20101172:	4463      	add	r3, ip
20101174:	059b      	lsls	r3, r3, #22
20101176:	0d1b      	lsrs	r3, r3, #20
20101178:	599b      	ldr	r3, [r3, r6]
2010117a:	1280      	asrs	r0, r0, #10
2010117c:	4359      	muls	r1, r3
2010117e:	1289      	asrs	r1, r1, #10
20101180:	1a43      	subs	r3, r0, r1
20101182:	602b      	str	r3, [r5, #0]
20101184:	1843      	adds	r3, r0, r1
20101186:	4240      	negs	r0, r0
20101188:	1a40      	subs	r0, r0, r1
2010118a:	606b      	str	r3, [r5, #4]
2010118c:	60a8      	str	r0, [r5, #8]
2010118e:	e770      	b.n	20101072 <svpwm+0x1a2>
20101190:	4650      	mov	r0, sl
20101192:	5880      	ldr	r0, [r0, r2]
20101194:	4a2a      	ldr	r2, [pc, #168]	; (20101240 <svpwm+0x370>)
20101196:	1ad2      	subs	r2, r2, r3
20101198:	33ac      	adds	r3, #172	; 0xac
2010119a:	0592      	lsls	r2, r2, #22
2010119c:	33ff      	adds	r3, #255	; 0xff
2010119e:	0d12      	lsrs	r2, r2, #20
201011a0:	059b      	lsls	r3, r3, #22
201011a2:	5816      	ldr	r6, [r2, r0]
201011a4:	0d1b      	lsrs	r3, r3, #20
201011a6:	581b      	ldr	r3, [r3, r0]
201011a8:	434e      	muls	r6, r1
201011aa:	4359      	muls	r1, r3
201011ac:	12b6      	asrs	r6, r6, #10
201011ae:	1289      	asrs	r1, r1, #10
201011b0:	4273      	negs	r3, r6
201011b2:	1a5b      	subs	r3, r3, r1
201011b4:	602b      	str	r3, [r5, #0]
201011b6:	1873      	adds	r3, r6, r1
201011b8:	1b89      	subs	r1, r1, r6
201011ba:	606b      	str	r3, [r5, #4]
201011bc:	60a9      	str	r1, [r5, #8]
201011be:	e758      	b.n	20101072 <svpwm+0x1a2>
201011c0:	4642      	mov	r2, r8
201011c2:	11c9      	asrs	r1, r1, #7
201011c4:	1a50      	subs	r0, r2, r1
201011c6:	69f9      	ldr	r1, [r7, #28]
201011c8:	1a5b      	subs	r3, r3, r1
201011ca:	e71b      	b.n	20101004 <svpwm+0x134>
201011cc:	4650      	mov	r0, sl
201011ce:	5882      	ldr	r2, [r0, r2]
201011d0:	481c      	ldr	r0, [pc, #112]	; (20101244 <svpwm+0x374>)
201011d2:	1ac0      	subs	r0, r0, r3
201011d4:	3b55      	subs	r3, #85	; 0x55
201011d6:	0580      	lsls	r0, r0, #22
201011d8:	059b      	lsls	r3, r3, #22
201011da:	0d00      	lsrs	r0, r0, #20
201011dc:	0d1b      	lsrs	r3, r3, #20
201011de:	589b      	ldr	r3, [r3, r2]
201011e0:	5880      	ldr	r0, [r0, r2]
201011e2:	4348      	muls	r0, r1
201011e4:	4359      	muls	r1, r3
201011e6:	1280      	asrs	r0, r0, #10
201011e8:	1289      	asrs	r1, r1, #10
201011ea:	1843      	adds	r3, r0, r1
201011ec:	602b      	str	r3, [r5, #0]
201011ee:	4243      	negs	r3, r0
201011f0:	1a5b      	subs	r3, r3, r1
201011f2:	1a41      	subs	r1, r0, r1
201011f4:	606b      	str	r3, [r5, #4]
201011f6:	60a9      	str	r1, [r5, #8]
201011f8:	e73b      	b.n	20101072 <svpwm+0x1a2>
201011fa:	2100      	movs	r1, #0
201011fc:	e703      	b.n	20101006 <svpwm+0x136>
201011fe:	4648      	mov	r0, r9
20101200:	2101      	movs	r1, #1
20101202:	e700      	b.n	20101006 <svpwm+0x136>
20101204:	2102      	movs	r1, #2
20101206:	e6fe      	b.n	20101006 <svpwm+0x136>
20101208:	0008      	movs	r0, r1
2010120a:	2103      	movs	r1, #3
2010120c:	e6fb      	b.n	20101006 <svpwm+0x136>
2010120e:	2104      	movs	r1, #4
20101210:	e6f9      	b.n	20101006 <svpwm+0x136>
20101212:	4648      	mov	r0, r9
20101214:	2105      	movs	r1, #5
20101216:	e6f6      	b.n	20101006 <svpwm+0x136>
20101218:	4640      	mov	r0, r8
2010121a:	2106      	movs	r1, #6
2010121c:	e6f3      	b.n	20101006 <svpwm+0x136>
2010121e:	46c0      	nop			; (mov r8, r8)
20101220:	00001b3a 	.word	0x00001b3a
20101224:	ffeff19c 	.word	0xffeff19c
20101228:	00000000 	.word	0x00000000
2010122c:	000007aa 	.word	0x000007aa
20101230:	000009aa 	.word	0x000009aa
20101234:	00000a54 	.word	0x00000a54
20101238:	00000854 	.word	0x00000854
2010123c:	00000256 	.word	0x00000256
20101240:	000008ff 	.word	0x000008ff
20101244:	00000aff 	.word	0x00000aff

20101248 <get_speed>:
20101248:	4a10      	ldr	r2, [pc, #64]	; (2010128c <get_speed+0x44>)
2010124a:	b510      	push	{r4, lr}
2010124c:	447a      	add	r2, pc
2010124e:	6813      	ldr	r3, [r2, #0]
20101250:	6854      	ldr	r4, [r2, #4]
20101252:	1ac3      	subs	r3, r0, r3
20101254:	6050      	str	r0, [r2, #4]
20101256:	6014      	str	r4, [r2, #0]
20101258:	17da      	asrs	r2, r3, #31
2010125a:	1898      	adds	r0, r3, r2
2010125c:	4050      	eors	r0, r2
2010125e:	22fa      	movs	r2, #250	; 0xfa
20101260:	0092      	lsls	r2, r2, #2
20101262:	4290      	cmp	r0, r2
20101264:	dd04      	ble.n	20101270 <get_speed+0x28>
20101266:	2b00      	cmp	r3, #0
20101268:	db0a      	blt.n	20101280 <get_speed+0x38>
2010126a:	4a09      	ldr	r2, [pc, #36]	; (20101290 <get_speed+0x48>)
2010126c:	4694      	mov	ip, r2
2010126e:	4463      	add	r3, ip
20101270:	680a      	ldr	r2, [r1, #0]
20101272:	4808      	ldr	r0, [pc, #32]	; (20101294 <get_speed+0x4c>)
20101274:	18d2      	adds	r2, r2, r3
20101276:	105b      	asrs	r3, r3, #1
20101278:	4343      	muls	r3, r0
2010127a:	600a      	str	r2, [r1, #0]
2010127c:	1318      	asrs	r0, r3, #12
2010127e:	bd10      	pop	{r4, pc}
20101280:	2280      	movs	r2, #128	; 0x80
20101282:	0152      	lsls	r2, r2, #5
20101284:	4694      	mov	ip, r2
20101286:	4463      	add	r3, ip
20101288:	e7f2      	b.n	20101270 <get_speed+0x28>
2010128a:	46c0      	nop			; (mov r8, r8)
2010128c:	ffefee70 	.word	0xffefee70
20101290:	fffff000 	.word	0xfffff000
20101294:	0002ae7c 	.word	0x0002ae7c

20101298 <c_mfilter>:
20101298:	221f      	movs	r2, #31
2010129a:	4908      	ldr	r1, [pc, #32]	; (201012bc <c_mfilter+0x24>)
2010129c:	b510      	push	{r4, lr}
2010129e:	4479      	add	r1, pc
201012a0:	688b      	ldr	r3, [r1, #8]
201012a2:	3301      	adds	r3, #1
201012a4:	4013      	ands	r3, r2
201012a6:	608b      	str	r3, [r1, #8]
201012a8:	009b      	lsls	r3, r3, #2
201012aa:	18cb      	adds	r3, r1, r3
201012ac:	68ca      	ldr	r2, [r1, #12]
201012ae:	691c      	ldr	r4, [r3, #16]
201012b0:	6118      	str	r0, [r3, #16]
201012b2:	1b12      	subs	r2, r2, r4
201012b4:	1812      	adds	r2, r2, r0
201012b6:	1150      	asrs	r0, r2, #5
201012b8:	60ca      	str	r2, [r1, #12]
201012ba:	bd10      	pop	{r4, pc}
201012bc:	ffefee1e 	.word	0xffefee1e

201012c0 <adc_dma_init>:
201012c0:	b580      	push	{r7, lr}
201012c2:	af00      	add	r7, sp, #0
201012c4:	4b1c      	ldr	r3, [pc, #112]	; (20101338 <adc_dma_init+0x78>)
201012c6:	4a1c      	ldr	r2, [pc, #112]	; (20101338 <adc_dma_init+0x78>)
201012c8:	69d2      	ldr	r2, [r2, #28]
201012ca:	2120      	movs	r1, #32
201012cc:	430a      	orrs	r2, r1
201012ce:	61da      	str	r2, [r3, #28]
201012d0:	4b1a      	ldr	r3, [pc, #104]	; (2010133c <adc_dma_init+0x7c>)
201012d2:	4a1b      	ldr	r2, [pc, #108]	; (20101340 <adc_dma_init+0x80>)
201012d4:	447a      	add	r2, pc
201012d6:	609a      	str	r2, [r3, #8]
201012d8:	4b18      	ldr	r3, [pc, #96]	; (2010133c <adc_dma_init+0x7c>)
201012da:	2201      	movs	r2, #1
201012dc:	4252      	negs	r2, r2
201012de:	62da      	str	r2, [r3, #44]	; 0x2c
201012e0:	4b16      	ldr	r3, [pc, #88]	; (2010133c <adc_dma_init+0x7c>)
201012e2:	2201      	movs	r2, #1
201012e4:	4252      	negs	r2, r2
201012e6:	621a      	str	r2, [r3, #32]
201012e8:	4b14      	ldr	r3, [pc, #80]	; (2010133c <adc_dma_init+0x7c>)
201012ea:	2201      	movs	r2, #1
201012ec:	4252      	negs	r2, r2
201012ee:	635a      	str	r2, [r3, #52]	; 0x34
201012f0:	4b12      	ldr	r3, [pc, #72]	; (2010133c <adc_dma_init+0x7c>)
201012f2:	2280      	movs	r2, #128	; 0x80
201012f4:	05d2      	lsls	r2, r2, #23
201012f6:	61da      	str	r2, [r3, #28]
201012f8:	4b10      	ldr	r3, [pc, #64]	; (2010133c <adc_dma_init+0x7c>)
201012fa:	2280      	movs	r2, #128	; 0x80
201012fc:	05d2      	lsls	r2, r2, #23
201012fe:	625a      	str	r2, [r3, #36]	; 0x24
20101300:	4b0e      	ldr	r3, [pc, #56]	; (2010133c <adc_dma_init+0x7c>)
20101302:	2201      	movs	r2, #1
20101304:	605a      	str	r2, [r3, #4]
20101306:	4a0f      	ldr	r2, [pc, #60]	; (20101344 <adc_dma_init+0x84>)
20101308:	447a      	add	r2, pc
2010130a:	23f0      	movs	r3, #240	; 0xf0
2010130c:	005b      	lsls	r3, r3, #1
2010130e:	490e      	ldr	r1, [pc, #56]	; (20101348 <adc_dma_init+0x88>)
20101310:	50d1      	str	r1, [r2, r3]
20101312:	4b0e      	ldr	r3, [pc, #56]	; (2010134c <adc_dma_init+0x8c>)
20101314:	447b      	add	r3, pc
20101316:	330c      	adds	r3, #12
20101318:	0019      	movs	r1, r3
2010131a:	4a0d      	ldr	r2, [pc, #52]	; (20101350 <adc_dma_init+0x90>)
2010131c:	447a      	add	r2, pc
2010131e:	23f2      	movs	r3, #242	; 0xf2
20101320:	005b      	lsls	r3, r3, #1
20101322:	50d1      	str	r1, [r2, r3]
20101324:	4a0b      	ldr	r2, [pc, #44]	; (20101354 <adc_dma_init+0x94>)
20101326:	447a      	add	r2, pc
20101328:	23f4      	movs	r3, #244	; 0xf4
2010132a:	005b      	lsls	r3, r3, #1
2010132c:	490a      	ldr	r1, [pc, #40]	; (20101358 <adc_dma_init+0x98>)
2010132e:	50d1      	str	r1, [r2, r3]
20101330:	46c0      	nop			; (mov r8, r8)
20101332:	46bd      	mov	sp, r7
20101334:	bd80      	pop	{r7, pc}
20101336:	46c0      	nop			; (mov r8, r8)
20101338:	40020000 	.word	0x40020000
2010133c:	40028000 	.word	0x40028000
20101340:	00000528 	.word	0x00000528
20101344:	000004f4 	.word	0x000004f4
20101348:	40088018 	.word	0x40088018
2010134c:	000006e8 	.word	0x000006e8
20101350:	000004e0 	.word	0x000004e0
20101354:	000004d6 	.word	0x000004d6
20101358:	ae000031 	.word	0xae000031

2010135c <adc_dma_start>:
2010135c:	b580      	push	{r7, lr}
2010135e:	af00      	add	r7, sp, #0
20101360:	4b06      	ldr	r3, [pc, #24]	; (2010137c <adc_dma_start+0x20>)
20101362:	4a06      	ldr	r2, [pc, #24]	; (2010137c <adc_dma_start+0x20>)
20101364:	6812      	ldr	r2, [r2, #0]
20101366:	2108      	movs	r1, #8
20101368:	430a      	orrs	r2, r1
2010136a:	601a      	str	r2, [r3, #0]
2010136c:	4b04      	ldr	r3, [pc, #16]	; (20101380 <adc_dma_start+0x24>)
2010136e:	2280      	movs	r2, #128	; 0x80
20101370:	05d2      	lsls	r2, r2, #23
20101372:	629a      	str	r2, [r3, #40]	; 0x28
20101374:	46c0      	nop			; (mov r8, r8)
20101376:	46bd      	mov	sp, r7
20101378:	bd80      	pop	{r7, pc}
2010137a:	46c0      	nop			; (mov r8, r8)
2010137c:	40088000 	.word	0x40088000
20101380:	40028000 	.word	0x40028000

20101384 <adc_dma_wait>:
20101384:	b580      	push	{r7, lr}
20101386:	af00      	add	r7, sp, #0
20101388:	46c0      	nop			; (mov r8, r8)
2010138a:	4a0b      	ldr	r2, [pc, #44]	; (201013b8 <adc_dma_wait+0x34>)
2010138c:	447a      	add	r2, pc
2010138e:	23f4      	movs	r3, #244	; 0xf4
20101390:	005b      	lsls	r3, r3, #1
20101392:	58d3      	ldr	r3, [r2, r3]
20101394:	2207      	movs	r2, #7
20101396:	4013      	ands	r3, r2
20101398:	d1f7      	bne.n	2010138a <adc_dma_wait+0x6>
2010139a:	4b08      	ldr	r3, [pc, #32]	; (201013bc <adc_dma_wait+0x38>)
2010139c:	4a07      	ldr	r2, [pc, #28]	; (201013bc <adc_dma_wait+0x38>)
2010139e:	6812      	ldr	r2, [r2, #0]
201013a0:	2108      	movs	r1, #8
201013a2:	438a      	bics	r2, r1
201013a4:	601a      	str	r2, [r3, #0]
201013a6:	4a06      	ldr	r2, [pc, #24]	; (201013c0 <adc_dma_wait+0x3c>)
201013a8:	447a      	add	r2, pc
201013aa:	23f4      	movs	r3, #244	; 0xf4
201013ac:	005b      	lsls	r3, r3, #1
201013ae:	4905      	ldr	r1, [pc, #20]	; (201013c4 <adc_dma_wait+0x40>)
201013b0:	50d1      	str	r1, [r2, r3]
201013b2:	46c0      	nop			; (mov r8, r8)
201013b4:	46bd      	mov	sp, r7
201013b6:	bd80      	pop	{r7, pc}
201013b8:	00000470 	.word	0x00000470
201013bc:	40088000 	.word	0x40088000
201013c0:	00000454 	.word	0x00000454
201013c4:	ae000031 	.word	0xae000031
	...

201013d0 <asm_test_loop>:
201013d0:	b5f0      	push	{r4, r5, r6, r7, lr}
201013d2:	6803      	ldr	r3, [r0, #0]
201013d4:	17dc      	asrs	r4, r3, #31
201013d6:	191b      	adds	r3, r3, r4
201013d8:	4063      	eors	r3, r4
201013da:	6844      	ldr	r4, [r0, #4]
201013dc:	4040      	eors	r0, r0
201013de:	407f      	eors	r7, r7
201013e0:	1c1d      	adds	r5, r3, #0
201013e2:	1c24      	adds	r4, r4, #0
201013e4:	dd01      	ble.n	201013ea <ylesseq>
201013e6:	191b      	adds	r3, r3, r4
201013e8:	1b64      	subs	r4, r4, r5

201013ea <ylesseq>:
201013ea:	1b1b      	subs	r3, r3, r4
201013ec:	1964      	adds	r4, r4, r5
201013ee:	bdf0      	pop	{r4, r5, r6, r7, pc}

201013f0 <AngTable>:
201013f0:	00000080 	.word	0x00000080
201013f4:	0000004c 	.word	0x0000004c
201013f8:	00000028 	.word	0x00000028
201013fc:	00000014 	.word	0x00000014
20101400:	0000000a 	.word	0x0000000a
20101404:	00000005 	.word	0x00000005
20101408:	00000003 	.word	0x00000003
2010140c:	00000001 	.word	0x00000001

20101410 <kc>:
20101410:	000002d4 	.word	0x000002d4
20101414:	00000288 	.word	0x00000288
20101418:	00000274 	.word	0x00000274
2010141c:	0000026f 	.word	0x0000026f
20101420:	0000026f 	.word	0x0000026f
20101424:	0000026e 	.word	0x0000026e
20101428:	0000026e 	.word	0x0000026e
2010142c:	0000026e 	.word	0x0000026e

20101430 <abc_to_dq>:
20101430:	b570      	push	{r4, r5, r6, lr}
20101432:	4b49      	ldr	r3, [pc, #292]	; (20101558 <dot3+0x1c>)
20101434:	0092      	lsls	r2, r2, #2
20101436:	589c      	ldr	r4, [r3, r2]
20101438:	6805      	ldr	r5, [r0, #0]
2010143a:	436c      	muls	r4, r5
2010143c:	4e31      	ldr	r6, [pc, #196]	; (20101504 <P_4PI3>)
2010143e:	18b6      	adds	r6, r6, r2
20101440:	4d34      	ldr	r5, [pc, #208]	; (20101514 <MASK1023>)
20101442:	4035      	ands	r5, r6
20101444:	595e      	ldr	r6, [r3, r5]
20101446:	6845      	ldr	r5, [r0, #4]
20101448:	4375      	muls	r5, r6
2010144a:	1964      	adds	r4, r4, r5
2010144c:	4e2e      	ldr	r6, [pc, #184]	; (20101508 <P_2PI3>)
2010144e:	18b6      	adds	r6, r6, r2
20101450:	4d30      	ldr	r5, [pc, #192]	; (20101514 <MASK1023>)
20101452:	4035      	ands	r5, r6
20101454:	595e      	ldr	r6, [r3, r5]
20101456:	6885      	ldr	r5, [r0, #8]
20101458:	4375      	muls	r5, r6
2010145a:	1964      	adds	r4, r4, r5
2010145c:	12a4      	asrs	r4, r4, #10
2010145e:	600c      	str	r4, [r1, #0]
20101460:	4e27      	ldr	r6, [pc, #156]	; (20101500 <P_3PI2>)
20101462:	18b6      	adds	r6, r6, r2
20101464:	4d2b      	ldr	r5, [pc, #172]	; (20101514 <MASK1023>)
20101466:	4035      	ands	r5, r6
20101468:	595e      	ldr	r6, [r3, r5]
2010146a:	6804      	ldr	r4, [r0, #0]
2010146c:	4374      	muls	r4, r6
2010146e:	4e27      	ldr	r6, [pc, #156]	; (2010150c <P_4PI33PI2>)
20101470:	18b6      	adds	r6, r6, r2
20101472:	4d28      	ldr	r5, [pc, #160]	; (20101514 <MASK1023>)
20101474:	4035      	ands	r5, r6
20101476:	595e      	ldr	r6, [r3, r5]
20101478:	6845      	ldr	r5, [r0, #4]
2010147a:	4375      	muls	r5, r6
2010147c:	1964      	adds	r4, r4, r5
2010147e:	4e24      	ldr	r6, [pc, #144]	; (20101510 <P_2PI33PI2>)
20101480:	18b6      	adds	r6, r6, r2
20101482:	4d24      	ldr	r5, [pc, #144]	; (20101514 <MASK1023>)
20101484:	4035      	ands	r5, r6
20101486:	595e      	ldr	r6, [r3, r5]
20101488:	6885      	ldr	r5, [r0, #8]
2010148a:	4375      	muls	r5, r6
2010148c:	1964      	adds	r4, r4, r5
2010148e:	12a4      	asrs	r4, r4, #10
20101490:	4076      	eors	r6, r6
20101492:	1b36      	subs	r6, r6, r4
20101494:	604e      	str	r6, [r1, #4]
20101496:	bd70      	pop	{r4, r5, r6, pc}

20101498 <dq_to_abc>:
20101498:	b570      	push	{r4, r5, r6, lr}
2010149a:	4b2f      	ldr	r3, [pc, #188]	; (20101558 <dot3+0x1c>)
2010149c:	0092      	lsls	r2, r2, #2
2010149e:	589c      	ldr	r4, [r3, r2]
201014a0:	680d      	ldr	r5, [r1, #0]
201014a2:	436c      	muls	r4, r5
201014a4:	4e16      	ldr	r6, [pc, #88]	; (20101500 <P_3PI2>)
201014a6:	18b6      	adds	r6, r6, r2
201014a8:	4d1a      	ldr	r5, [pc, #104]	; (20101514 <MASK1023>)
201014aa:	4035      	ands	r5, r6
201014ac:	595e      	ldr	r6, [r3, r5]
201014ae:	684d      	ldr	r5, [r1, #4]
201014b0:	4375      	muls	r5, r6
201014b2:	1b64      	subs	r4, r4, r5
201014b4:	1524      	asrs	r4, r4, #20
201014b6:	6004      	str	r4, [r0, #0]
201014b8:	4e12      	ldr	r6, [pc, #72]	; (20101504 <P_4PI3>)
201014ba:	18b6      	adds	r6, r6, r2
201014bc:	4d15      	ldr	r5, [pc, #84]	; (20101514 <MASK1023>)
201014be:	4035      	ands	r5, r6
201014c0:	595c      	ldr	r4, [r3, r5]
201014c2:	680d      	ldr	r5, [r1, #0]
201014c4:	436c      	muls	r4, r5
201014c6:	4e11      	ldr	r6, [pc, #68]	; (2010150c <P_4PI33PI2>)
201014c8:	18b6      	adds	r6, r6, r2
201014ca:	4d12      	ldr	r5, [pc, #72]	; (20101514 <MASK1023>)
201014cc:	4035      	ands	r5, r6
201014ce:	595e      	ldr	r6, [r3, r5]
201014d0:	684d      	ldr	r5, [r1, #4]
201014d2:	4375      	muls	r5, r6
201014d4:	1b64      	subs	r4, r4, r5
201014d6:	1524      	asrs	r4, r4, #20
201014d8:	6044      	str	r4, [r0, #4]
201014da:	4e0b      	ldr	r6, [pc, #44]	; (20101508 <P_2PI3>)
201014dc:	18b6      	adds	r6, r6, r2
201014de:	4d0d      	ldr	r5, [pc, #52]	; (20101514 <MASK1023>)
201014e0:	4035      	ands	r5, r6
201014e2:	595c      	ldr	r4, [r3, r5]
201014e4:	680d      	ldr	r5, [r1, #0]
201014e6:	436c      	muls	r4, r5
201014e8:	4e09      	ldr	r6, [pc, #36]	; (20101510 <P_2PI33PI2>)
201014ea:	18b6      	adds	r6, r6, r2
201014ec:	4d09      	ldr	r5, [pc, #36]	; (20101514 <MASK1023>)
201014ee:	4035      	ands	r5, r6
201014f0:	595e      	ldr	r6, [r3, r5]
201014f2:	684d      	ldr	r5, [r1, #4]
201014f4:	4375      	muls	r5, r6
201014f6:	1b64      	subs	r4, r4, r5
201014f8:	1524      	asrs	r4, r4, #20
201014fa:	6084      	str	r4, [r0, #8]
201014fc:	bd70      	pop	{r4, r5, r6, pc}
201014fe:	46c0      	nop			; (mov r8, r8)

20101500 <P_3PI2>:
20101500:	00000c00 	.word	0x00000c00

20101504 <P_4PI3>:
20101504:	00000aaa 	.word	0x00000aaa

20101508 <P_2PI3>:
20101508:	00000555 	.word	0x00000555

2010150c <P_4PI33PI2>:
2010150c:	000016aa 	.word	0x000016aa

20101510 <P_2PI33PI2>:
20101510:	00001155 	.word	0x00001155

20101514 <MASK1023>:
20101514:	00000ffc 	.word	0x00000ffc

20101518 <mfilter>:
20101518:	4910      	ldr	r1, [pc, #64]	; (2010155c <dot3+0x20>)
2010151a:	680a      	ldr	r2, [r1, #0]
2010151c:	3201      	adds	r2, #1
2010151e:	231f      	movs	r3, #31
20101520:	401a      	ands	r2, r3
20101522:	600a      	str	r2, [r1, #0]
20101524:	490e      	ldr	r1, [pc, #56]	; (20101560 <dot3+0x24>)
20101526:	0092      	lsls	r2, r2, #2
20101528:	1889      	adds	r1, r1, r2
2010152a:	680a      	ldr	r2, [r1, #0]
2010152c:	6008      	str	r0, [r1, #0]
2010152e:	1a80      	subs	r0, r0, r2
20101530:	490c      	ldr	r1, [pc, #48]	; (20101564 <dot3+0x28>)
20101532:	680a      	ldr	r2, [r1, #0]
20101534:	1880      	adds	r0, r0, r2
20101536:	6008      	str	r0, [r1, #0]
20101538:	1140      	asrs	r0, r0, #5
2010153a:	46f7      	mov	pc, lr

2010153c <dot3>:
2010153c:	b580      	push	{r7, lr}
2010153e:	6802      	ldr	r2, [r0, #0]
20101540:	680b      	ldr	r3, [r1, #0]
20101542:	435a      	muls	r2, r3
20101544:	1c17      	adds	r7, r2, #0
20101546:	6842      	ldr	r2, [r0, #4]
20101548:	684b      	ldr	r3, [r1, #4]
2010154a:	435a      	muls	r2, r3
2010154c:	18bf      	adds	r7, r7, r2
2010154e:	6880      	ldr	r0, [r0, #8]
20101550:	688b      	ldr	r3, [r1, #8]
20101552:	4358      	muls	r0, r3
20101554:	1838      	adds	r0, r7, r0
20101556:	bd80      	pop	{r7, pc}
20101558:	20101a20 	.word	0x20101a20
2010155c:	20000008 	.word	0x20000008
20101560:	2000000c 	.word	0x2000000c
20101564:	20000004 	.word	0x20000004

20101568 <__gnu_thumb1_case_uqi>:
20101568:	b402      	push	{r1}
2010156a:	4671      	mov	r1, lr
2010156c:	0849      	lsrs	r1, r1, #1
2010156e:	0049      	lsls	r1, r1, #1
20101570:	5c09      	ldrb	r1, [r1, r0]
20101572:	0049      	lsls	r1, r1, #1
20101574:	448e      	add	lr, r1
20101576:	bc02      	pop	{r1}
20101578:	4770      	bx	lr
2010157a:	46c0      	nop			; (mov r8, r8)
	...

20101800 <dma_ctr_str>:
	...

20101a00 <adc_dma_buffer>:
	...
