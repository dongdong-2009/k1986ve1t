
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
20100044:	f000 fd12 	bl	20100a6c <SystemInit>
20100048:	2396      	movs	r3, #150	; 0x96
2010004a:	009a      	lsls	r2, r3, #2
2010004c:	2334      	movs	r3, #52	; 0x34
2010004e:	18fb      	adds	r3, r7, r3
20100050:	21c8      	movs	r1, #200	; 0xc8
20100052:	0018      	movs	r0, r3
20100054:	f000 fd52 	bl	20100afc <reg_init>
20100058:	2396      	movs	r3, #150	; 0x96
2010005a:	009a      	lsls	r2, r3, #2
2010005c:	2324      	movs	r3, #36	; 0x24
2010005e:	18fb      	adds	r3, r7, r3
20100060:	21c8      	movs	r1, #200	; 0xc8
20100062:	0018      	movs	r0, r3
20100064:	f000 fd4a 	bl	20100afc <reg_init>
20100068:	23fa      	movs	r3, #250	; 0xfa
2010006a:	011a      	lsls	r2, r3, #4
2010006c:	2314      	movs	r3, #20
2010006e:	18fb      	adds	r3, r7, r3
20100070:	2100      	movs	r1, #0
20100072:	0018      	movs	r0, r3
20100074:	f000 fd42 	bl	20100afc <reg_init>
20100078:	4a12      	ldr	r2, [pc, #72]	; (201000c4 <main+0xc4>)
2010007a:	1d3b      	adds	r3, r7, #4
2010007c:	2100      	movs	r1, #0
2010007e:	0018      	movs	r0, r3
20100080:	f000 fd3c 	bl	20100afc <reg_init>
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
201000bc:	e05f      	b.n	2010017e <main+0x17e>
201000be:	46c0      	nop			; (mov r8, r8)
201000c0:	fff00080 	.word	0xfff00080
201000c4:	00001770 	.word	0x00001770
201000c8:	fff00016 	.word	0xfff00016
201000cc:	fff00022 	.word	0xfff00022
201000d0:	ffeffffe 	.word	0xffeffffe
201000d4:	ffeffffa 	.word	0xffeffffa
201000d8:	f000 fcdc 	bl	20100a94 <timer_wait>
201000dc:	f001 f9c2 	bl	20101464 <adc_dma_start>
201000e0:	4be6      	ldr	r3, [pc, #920]	; (2010047c <main+0x47c>)
201000e2:	4ae7      	ldr	r2, [pc, #924]	; (20100480 <main+0x480>)
201000e4:	609a      	str	r2, [r3, #8]
201000e6:	f001 f9d1 	bl	2010148c <adc_dma_wait>
201000ea:	4be6      	ldr	r3, [pc, #920]	; (20100484 <main+0x484>)
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
20100102:	4be0      	ldr	r3, [pc, #896]	; (20100484 <main+0x484>)
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
2010011a:	4bda      	ldr	r3, [pc, #872]	; (20100484 <main+0x484>)
2010011c:	58e3      	ldr	r3, [r4, r3]
2010011e:	68db      	ldr	r3, [r3, #12]
20100120:	051b      	lsls	r3, r3, #20
20100122:	0d1a      	lsrs	r2, r3, #20
20100124:	4bd8      	ldr	r3, [pc, #864]	; (20100488 <main+0x488>)
20100126:	447b      	add	r3, pc
20100128:	681b      	ldr	r3, [r3, #0]
2010012a:	18d3      	adds	r3, r2, r3
2010012c:	001a      	movs	r2, r3
2010012e:	4bd7      	ldr	r3, [pc, #860]	; (2010048c <main+0x48c>)
20100130:	447b      	add	r3, pc
20100132:	601a      	str	r2, [r3, #0]
20100134:	4bd1      	ldr	r3, [pc, #836]	; (2010047c <main+0x47c>)
20100136:	689b      	ldr	r3, [r3, #8]
20100138:	051b      	lsls	r3, r3, #20
2010013a:	0d1b      	lsrs	r3, r3, #20
2010013c:	0018      	movs	r0, r3
2010013e:	f000 fc7d 	bl	20100a3c <g2b>
20100142:	0002      	movs	r2, r0
20100144:	4bd2      	ldr	r3, [pc, #840]	; (20100490 <main+0x490>)
20100146:	447b      	add	r3, pc
20100148:	681b      	ldr	r3, [r3, #0]
2010014a:	18d3      	adds	r3, r2, r3
2010014c:	001a      	movs	r2, r3
2010014e:	4bd1      	ldr	r3, [pc, #836]	; (20100494 <main+0x494>)
20100150:	447b      	add	r3, pc
20100152:	601a      	str	r2, [r3, #0]
20100154:	4bcb      	ldr	r3, [pc, #812]	; (20100484 <main+0x484>)
20100156:	58e3      	ldr	r3, [r4, r3]
20100158:	681b      	ldr	r3, [r3, #0]
2010015a:	051b      	lsls	r3, r3, #20
2010015c:	0d1a      	lsrs	r2, r3, #20
2010015e:	0013      	movs	r3, r2
20100160:	009b      	lsls	r3, r3, #2
20100162:	189b      	adds	r3, r3, r2
20100164:	0018      	movs	r0, r3
20100166:	f001 fa57 	bl	20101618 <mfilter>
2010016a:	2000      	movs	r0, #0
2010016c:	f001 f8d8 	bl	20101320 <rfilter1>
20100170:	2394      	movs	r3, #148	; 0x94
20100172:	18fb      	adds	r3, r7, r3
20100174:	681b      	ldr	r3, [r3, #0]
20100176:	3301      	adds	r3, #1
20100178:	2294      	movs	r2, #148	; 0x94
2010017a:	18ba      	adds	r2, r7, r2
2010017c:	6013      	str	r3, [r2, #0]
2010017e:	2394      	movs	r3, #148	; 0x94
20100180:	18fb      	adds	r3, r7, r3
20100182:	681b      	ldr	r3, [r3, #0]
20100184:	4ac4      	ldr	r2, [pc, #784]	; (20100498 <main+0x498>)
20100186:	4293      	cmp	r3, r2
20100188:	dda6      	ble.n	201000d8 <main+0xd8>
2010018a:	2390      	movs	r3, #144	; 0x90
2010018c:	18fb      	adds	r3, r7, r3
2010018e:	681b      	ldr	r3, [r3, #0]
20100190:	129b      	asrs	r3, r3, #10
20100192:	2290      	movs	r2, #144	; 0x90
20100194:	18ba      	adds	r2, r7, r2
20100196:	6013      	str	r3, [r2, #0]
20100198:	238c      	movs	r3, #140	; 0x8c
2010019a:	18fb      	adds	r3, r7, r3
2010019c:	681b      	ldr	r3, [r3, #0]
2010019e:	129b      	asrs	r3, r3, #10
201001a0:	228c      	movs	r2, #140	; 0x8c
201001a2:	18ba      	adds	r2, r7, r2
201001a4:	6013      	str	r3, [r2, #0]
201001a6:	4bbd      	ldr	r3, [pc, #756]	; (2010049c <main+0x49c>)
201001a8:	447b      	add	r3, pc
201001aa:	681b      	ldr	r3, [r3, #0]
201001ac:	129a      	asrs	r2, r3, #10
201001ae:	4bbc      	ldr	r3, [pc, #752]	; (201004a0 <main+0x4a0>)
201001b0:	447b      	add	r3, pc
201001b2:	601a      	str	r2, [r3, #0]
201001b4:	4bbb      	ldr	r3, [pc, #748]	; (201004a4 <main+0x4a4>)
201001b6:	447b      	add	r3, pc
201001b8:	681a      	ldr	r2, [r3, #0]
201001ba:	4bbb      	ldr	r3, [pc, #748]	; (201004a8 <main+0x4a8>)
201001bc:	447b      	add	r3, pc
201001be:	601a      	str	r2, [r3, #0]
201001c0:	4bba      	ldr	r3, [pc, #744]	; (201004ac <main+0x4ac>)
201001c2:	447b      	add	r3, pc
201001c4:	681b      	ldr	r3, [r3, #0]
201001c6:	129a      	asrs	r2, r3, #10
201001c8:	4bb9      	ldr	r3, [pc, #740]	; (201004b0 <main+0x4b0>)
201001ca:	447b      	add	r3, pc
201001cc:	601a      	str	r2, [r3, #0]
201001ce:	f000 fc61 	bl	20100a94 <timer_wait>
201001d2:	4bb8      	ldr	r3, [pc, #736]	; (201004b4 <main+0x4b4>)
201001d4:	4ab7      	ldr	r2, [pc, #732]	; (201004b4 <main+0x4b4>)
201001d6:	6812      	ldr	r2, [r2, #0]
201001d8:	2140      	movs	r1, #64	; 0x40
201001da:	438a      	bics	r2, r1
201001dc:	601a      	str	r2, [r3, #0]
201001de:	f001 f941 	bl	20101464 <adc_dma_start>
201001e2:	4ba6      	ldr	r3, [pc, #664]	; (2010047c <main+0x47c>)
201001e4:	4aa6      	ldr	r2, [pc, #664]	; (20100480 <main+0x480>)
201001e6:	609a      	str	r2, [r3, #8]
201001e8:	f001 f950 	bl	2010148c <adc_dma_wait>
201001ec:	4bb1      	ldr	r3, [pc, #708]	; (201004b4 <main+0x4b4>)
201001ee:	4ab1      	ldr	r2, [pc, #708]	; (201004b4 <main+0x4b4>)
201001f0:	6812      	ldr	r2, [r2, #0]
201001f2:	2140      	movs	r1, #64	; 0x40
201001f4:	430a      	orrs	r2, r1
201001f6:	601a      	str	r2, [r3, #0]
201001f8:	4ba2      	ldr	r3, [pc, #648]	; (20100484 <main+0x484>)
201001fa:	58e3      	ldr	r3, [r4, r3]
201001fc:	681b      	ldr	r3, [r3, #0]
201001fe:	051b      	lsls	r3, r3, #20
20100200:	0d1a      	lsrs	r2, r3, #20
20100202:	0013      	movs	r3, r2
20100204:	009b      	lsls	r3, r3, #2
20100206:	189b      	adds	r3, r3, r2
20100208:	0018      	movs	r0, r3
2010020a:	f001 fa05 	bl	20101618 <mfilter>
2010020e:	0003      	movs	r3, r0
20100210:	2294      	movs	r2, #148	; 0x94
20100212:	18ba      	adds	r2, r7, r2
20100214:	6013      	str	r3, [r2, #0]
20100216:	4ba8      	ldr	r3, [pc, #672]	; (201004b8 <main+0x4b8>)
20100218:	447b      	add	r3, pc
2010021a:	2294      	movs	r2, #148	; 0x94
2010021c:	18ba      	adds	r2, r7, r2
2010021e:	6812      	ldr	r2, [r2, #0]
20100220:	601a      	str	r2, [r3, #0]
20100222:	2394      	movs	r3, #148	; 0x94
20100224:	18fb      	adds	r3, r7, r3
20100226:	681a      	ldr	r2, [r3, #0]
20100228:	0013      	movs	r3, r2
2010022a:	009b      	lsls	r3, r3, #2
2010022c:	189b      	adds	r3, r3, r2
2010022e:	005b      	lsls	r3, r3, #1
20100230:	189b      	adds	r3, r3, r2
20100232:	119b      	asrs	r3, r3, #6
20100234:	1d5a      	adds	r2, r3, #5
20100236:	32ff      	adds	r2, #255	; 0xff
20100238:	4ba0      	ldr	r3, [pc, #640]	; (201004bc <main+0x4bc>)
2010023a:	447b      	add	r3, pc
2010023c:	601a      	str	r2, [r3, #0]
2010023e:	4ba0      	ldr	r3, [pc, #640]	; (201004c0 <main+0x4c0>)
20100240:	447b      	add	r3, pc
20100242:	681a      	ldr	r2, [r3, #0]
20100244:	23c8      	movs	r3, #200	; 0xc8
20100246:	011b      	lsls	r3, r3, #4
20100248:	429a      	cmp	r2, r3
2010024a:	dd05      	ble.n	20100258 <main+0x258>
2010024c:	4b9d      	ldr	r3, [pc, #628]	; (201004c4 <main+0x4c4>)
2010024e:	447b      	add	r3, pc
20100250:	22c8      	movs	r2, #200	; 0xc8
20100252:	0112      	lsls	r2, r2, #4
20100254:	601a      	str	r2, [r3, #0]
20100256:	46c0      	nop			; (mov r8, r8)
20100258:	4b9b      	ldr	r3, [pc, #620]	; (201004c8 <main+0x4c8>)
2010025a:	447b      	add	r3, pc
2010025c:	681a      	ldr	r2, [r3, #0]
2010025e:	23f4      	movs	r3, #244	; 0xf4
20100260:	33ff      	adds	r3, #255	; 0xff
20100262:	429a      	cmp	r2, r3
20100264:	dc05      	bgt.n	20100272 <main+0x272>
20100266:	4b99      	ldr	r3, [pc, #612]	; (201004cc <main+0x4cc>)
20100268:	447b      	add	r3, pc
2010026a:	22fa      	movs	r2, #250	; 0xfa
2010026c:	0052      	lsls	r2, r2, #1
2010026e:	601a      	str	r2, [r3, #0]
20100270:	46c0      	nop			; (mov r8, r8)
20100272:	4b84      	ldr	r3, [pc, #528]	; (20100484 <main+0x484>)
20100274:	58e3      	ldr	r3, [r4, r3]
20100276:	685b      	ldr	r3, [r3, #4]
20100278:	051b      	lsls	r3, r3, #20
2010027a:	0d1a      	lsrs	r2, r3, #20
2010027c:	2390      	movs	r3, #144	; 0x90
2010027e:	18fb      	adds	r3, r7, r3
20100280:	681b      	ldr	r3, [r3, #0]
20100282:	1ad3      	subs	r3, r2, r3
20100284:	673b      	str	r3, [r7, #112]	; 0x70
20100286:	4b7f      	ldr	r3, [pc, #508]	; (20100484 <main+0x484>)
20100288:	58e3      	ldr	r3, [r4, r3]
2010028a:	689b      	ldr	r3, [r3, #8]
2010028c:	051b      	lsls	r3, r3, #20
2010028e:	0d1a      	lsrs	r2, r3, #20
20100290:	238c      	movs	r3, #140	; 0x8c
20100292:	18fb      	adds	r3, r7, r3
20100294:	681b      	ldr	r3, [r3, #0]
20100296:	1ad3      	subs	r3, r2, r3
20100298:	66fb      	str	r3, [r7, #108]	; 0x6c
2010029a:	6f3b      	ldr	r3, [r7, #112]	; 0x70
2010029c:	425a      	negs	r2, r3
2010029e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
201002a0:	1ad3      	subs	r3, r2, r3
201002a2:	66bb      	str	r3, [r7, #104]	; 0x68
201002a4:	4b77      	ldr	r3, [pc, #476]	; (20100484 <main+0x484>)
201002a6:	58e3      	ldr	r3, [r4, r3]
201002a8:	68db      	ldr	r3, [r3, #12]
201002aa:	051b      	lsls	r3, r3, #20
201002ac:	0d1a      	lsrs	r2, r3, #20
201002ae:	4b88      	ldr	r3, [pc, #544]	; (201004d0 <main+0x4d0>)
201002b0:	447b      	add	r3, pc
201002b2:	601a      	str	r2, [r3, #0]
201002b4:	4b71      	ldr	r3, [pc, #452]	; (2010047c <main+0x47c>)
201002b6:	689b      	ldr	r3, [r3, #8]
201002b8:	051b      	lsls	r3, r3, #20
201002ba:	0d1b      	lsrs	r3, r3, #20
201002bc:	0018      	movs	r0, r3
201002be:	f000 fbbd 	bl	20100a3c <g2b>
201002c2:	0003      	movs	r3, r0
201002c4:	667b      	str	r3, [r7, #100]	; 0x64
201002c6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
201002c8:	059b      	lsls	r3, r3, #22
201002ca:	0d9b      	lsrs	r3, r3, #22
201002cc:	67bb      	str	r3, [r7, #120]	; 0x78
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
201002e6:	d16a      	bne.n	201003be <main+0x3be>
201002e8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
201002ea:	003a      	movs	r2, r7
201002ec:	0011      	movs	r1, r2
201002ee:	0018      	movs	r0, r3
201002f0:	f000 ffda 	bl	201012a8 <get_speed>
201002f4:	0003      	movs	r3, r0
201002f6:	663b      	str	r3, [r7, #96]	; 0x60
201002f8:	4b76      	ldr	r3, [pc, #472]	; (201004d4 <main+0x4d4>)
201002fa:	447b      	add	r3, pc
201002fc:	681b      	ldr	r3, [r3, #0]
201002fe:	0018      	movs	r0, r3
20100300:	f001 f80e 	bl	20101320 <rfilter1>
20100304:	0002      	movs	r2, r0
20100306:	4b74      	ldr	r3, [pc, #464]	; (201004d8 <main+0x4d8>)
20100308:	447b      	add	r3, pc
2010030a:	601a      	str	r2, [r3, #0]
2010030c:	4b73      	ldr	r3, [pc, #460]	; (201004dc <main+0x4dc>)
2010030e:	447b      	add	r3, pc
20100310:	681b      	ldr	r3, [r3, #0]
20100312:	0018      	movs	r0, r3
20100314:	f001 f82e 	bl	20101374 <rfilter2>
20100318:	0002      	movs	r2, r0
2010031a:	4b71      	ldr	r3, [pc, #452]	; (201004e0 <main+0x4e0>)
2010031c:	447b      	add	r3, pc
2010031e:	601a      	str	r2, [r3, #0]
20100320:	4b70      	ldr	r3, [pc, #448]	; (201004e4 <main+0x4e4>)
20100322:	447b      	add	r3, pc
20100324:	681a      	ldr	r2, [r3, #0]
20100326:	4b70      	ldr	r3, [pc, #448]	; (201004e8 <main+0x4e8>)
20100328:	447b      	add	r3, pc
2010032a:	681b      	ldr	r3, [r3, #0]
2010032c:	1ad2      	subs	r2, r2, r3
2010032e:	0013      	movs	r3, r2
20100330:	00db      	lsls	r3, r3, #3
20100332:	1a9b      	subs	r3, r3, r2
20100334:	00da      	lsls	r2, r3, #3
20100336:	1ad2      	subs	r2, r2, r3
20100338:	4b6c      	ldr	r3, [pc, #432]	; (201004ec <main+0x4ec>)
2010033a:	447b      	add	r3, pc
2010033c:	601a      	str	r2, [r3, #0]
2010033e:	4b6c      	ldr	r3, [pc, #432]	; (201004f0 <main+0x4f0>)
20100340:	447b      	add	r3, pc
20100342:	681a      	ldr	r2, [r3, #0]
20100344:	683b      	ldr	r3, [r7, #0]
20100346:	1ad1      	subs	r1, r2, r3
20100348:	1d3b      	adds	r3, r7, #4
2010034a:	2200      	movs	r2, #0
2010034c:	0018      	movs	r0, r3
2010034e:	f000 fbdb 	bl	20100b08 <reg_update>
20100352:	1d3b      	adds	r3, r7, #4
20100354:	68db      	ldr	r3, [r3, #12]
20100356:	131b      	asrs	r3, r3, #12
20100358:	677b      	str	r3, [r7, #116]	; 0x74
2010035a:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2010035c:	6e3b      	ldr	r3, [r7, #96]	; 0x60
2010035e:	1ad1      	subs	r1, r2, r3
20100360:	2314      	movs	r3, #20
20100362:	18fb      	adds	r3, r7, r3
20100364:	2200      	movs	r2, #0
20100366:	0018      	movs	r0, r3
20100368:	f000 fbce 	bl	20100b08 <reg_update>
2010036c:	2314      	movs	r3, #20
2010036e:	18fb      	adds	r3, r7, r3
20100370:	68db      	ldr	r3, [r3, #12]
20100372:	131b      	asrs	r3, r3, #12
20100374:	2280      	movs	r2, #128	; 0x80
20100376:	18ba      	adds	r2, r7, r2
20100378:	6013      	str	r3, [r2, #0]
2010037a:	2380      	movs	r3, #128	; 0x80
2010037c:	18fb      	adds	r3, r7, r3
2010037e:	681a      	ldr	r2, [r3, #0]
20100380:	23fa      	movs	r3, #250	; 0xfa
20100382:	009b      	lsls	r3, r3, #2
20100384:	429a      	cmp	r2, r3
20100386:	dd04      	ble.n	20100392 <main+0x392>
20100388:	23fa      	movs	r3, #250	; 0xfa
2010038a:	009b      	lsls	r3, r3, #2
2010038c:	2280      	movs	r2, #128	; 0x80
2010038e:	18ba      	adds	r2, r7, r2
20100390:	6013      	str	r3, [r2, #0]
20100392:	2380      	movs	r3, #128	; 0x80
20100394:	18fb      	adds	r3, r7, r3
20100396:	681b      	ldr	r3, [r3, #0]
20100398:	4a56      	ldr	r2, [pc, #344]	; (201004f4 <main+0x4f4>)
2010039a:	4293      	cmp	r3, r2
2010039c:	da03      	bge.n	201003a6 <main+0x3a6>
2010039e:	4b55      	ldr	r3, [pc, #340]	; (201004f4 <main+0x4f4>)
201003a0:	2280      	movs	r2, #128	; 0x80
201003a2:	18ba      	adds	r2, r7, r2
201003a4:	6013      	str	r3, [r2, #0]
201003a6:	4a54      	ldr	r2, [pc, #336]	; (201004f8 <main+0x4f8>)
201003a8:	4b54      	ldr	r3, [pc, #336]	; (201004fc <main+0x4fc>)
201003aa:	447b      	add	r3, pc
201003ac:	6819      	ldr	r1, [r3, #0]
201003ae:	683b      	ldr	r3, [r7, #0]
201003b0:	1acb      	subs	r3, r1, r3
201003b2:	111b      	asrs	r3, r3, #4
201003b4:	2180      	movs	r1, #128	; 0x80
201003b6:	0109      	lsls	r1, r1, #4
201003b8:	468c      	mov	ip, r1
201003ba:	4463      	add	r3, ip
201003bc:	6053      	str	r3, [r2, #4]
201003be:	6fbb      	ldr	r3, [r7, #120]	; 0x78
201003c0:	22d0      	movs	r2, #208	; 0xd0
201003c2:	0092      	lsls	r2, r2, #2
201003c4:	4694      	mov	ip, r2
201003c6:	4463      	add	r3, ip
201003c8:	059b      	lsls	r3, r3, #22
201003ca:	0d9b      	lsrs	r3, r3, #22
201003cc:	67bb      	str	r3, [r7, #120]	; 0x78
201003ce:	2344      	movs	r3, #68	; 0x44
201003d0:	18fb      	adds	r3, r7, r3
201003d2:	6f3a      	ldr	r2, [r7, #112]	; 0x70
201003d4:	601a      	str	r2, [r3, #0]
201003d6:	2344      	movs	r3, #68	; 0x44
201003d8:	18fb      	adds	r3, r7, r3
201003da:	6eba      	ldr	r2, [r7, #104]	; 0x68
201003dc:	605a      	str	r2, [r3, #4]
201003de:	2344      	movs	r3, #68	; 0x44
201003e0:	18fb      	adds	r3, r7, r3
201003e2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
201003e4:	609a      	str	r2, [r3, #8]
201003e6:	6fba      	ldr	r2, [r7, #120]	; 0x78
201003e8:	2350      	movs	r3, #80	; 0x50
201003ea:	18f9      	adds	r1, r7, r3
201003ec:	2344      	movs	r3, #68	; 0x44
201003ee:	18fb      	adds	r3, r7, r3
201003f0:	0018      	movs	r0, r3
201003f2:	f001 f89d 	bl	20101530 <abc_to_dq>
201003f6:	2350      	movs	r3, #80	; 0x50
201003f8:	18fb      	adds	r3, r7, r3
201003fa:	681b      	ldr	r3, [r3, #0]
201003fc:	425b      	negs	r3, r3
201003fe:	65fb      	str	r3, [r7, #92]	; 0x5c
20100400:	2350      	movs	r3, #80	; 0x50
20100402:	18fb      	adds	r3, r7, r3
20100404:	685b      	ldr	r3, [r3, #4]
20100406:	2280      	movs	r2, #128	; 0x80
20100408:	18ba      	adds	r2, r7, r2
2010040a:	6812      	ldr	r2, [r2, #0]
2010040c:	1ad3      	subs	r3, r2, r3
2010040e:	65bb      	str	r3, [r7, #88]	; 0x58
20100410:	2388      	movs	r3, #136	; 0x88
20100412:	18fb      	adds	r3, r7, r3
20100414:	681a      	ldr	r2, [r3, #0]
20100416:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20100418:	2334      	movs	r3, #52	; 0x34
2010041a:	18fb      	adds	r3, r7, r3
2010041c:	0018      	movs	r0, r3
2010041e:	f000 fb73 	bl	20100b08 <reg_update>
20100422:	2388      	movs	r3, #136	; 0x88
20100424:	18fb      	adds	r3, r7, r3
20100426:	681a      	ldr	r2, [r3, #0]
20100428:	6db9      	ldr	r1, [r7, #88]	; 0x58
2010042a:	2324      	movs	r3, #36	; 0x24
2010042c:	18fb      	adds	r3, r7, r3
2010042e:	0018      	movs	r0, r3
20100430:	f000 fb6a 	bl	20100b08 <reg_update>
20100434:	2334      	movs	r3, #52	; 0x34
20100436:	18fb      	adds	r3, r7, r3
20100438:	68db      	ldr	r3, [r3, #12]
2010043a:	109a      	asrs	r2, r3, #2
2010043c:	2350      	movs	r3, #80	; 0x50
2010043e:	18fb      	adds	r3, r7, r3
20100440:	601a      	str	r2, [r3, #0]
20100442:	2324      	movs	r3, #36	; 0x24
20100444:	18fb      	adds	r3, r7, r3
20100446:	68db      	ldr	r3, [r3, #12]
20100448:	109a      	asrs	r2, r3, #2
2010044a:	2350      	movs	r3, #80	; 0x50
2010044c:	18fb      	adds	r3, r7, r3
2010044e:	605a      	str	r2, [r3, #4]
20100450:	6fba      	ldr	r2, [r7, #120]	; 0x78
20100452:	2350      	movs	r3, #80	; 0x50
20100454:	18f9      	adds	r1, r7, r3
20100456:	2344      	movs	r3, #68	; 0x44
20100458:	18fb      	adds	r3, r7, r3
2010045a:	0018      	movs	r0, r3
2010045c:	f000 fd68 	bl	20100f30 <svpwm>
20100460:	0003      	movs	r3, r0
20100462:	2288      	movs	r2, #136	; 0x88
20100464:	18ba      	adds	r2, r7, r2
20100466:	6013      	str	r3, [r2, #0]
20100468:	4a25      	ldr	r2, [pc, #148]	; (20100500 <main+0x500>)
2010046a:	2344      	movs	r3, #68	; 0x44
2010046c:	18fb      	adds	r3, r7, r3
2010046e:	681b      	ldr	r3, [r3, #0]
20100470:	2180      	movs	r1, #128	; 0x80
20100472:	0089      	lsls	r1, r1, #2
20100474:	468c      	mov	ip, r1
20100476:	4463      	add	r3, ip
20100478:	e044      	b.n	20100504 <main+0x504>
2010047a:	46c0      	nop			; (mov r8, r8)
2010047c:	400a0000 	.word	0x400a0000
20100480:	00000555 	.word	0x00000555
20100484:	00000004 	.word	0x00000004
20100488:	ffefff7e 	.word	0xffefff7e
2010048c:	ffefff74 	.word	0xffefff74
20100490:	ffefff62 	.word	0xffefff62
20100494:	ffefff58 	.word	0xffefff58
20100498:	000003ff 	.word	0x000003ff
2010049c:	ffeffefc 	.word	0xffeffefc
201004a0:	ffeffef4 	.word	0xffeffef4
201004a4:	ffeffeee 	.word	0xffeffeee
201004a8:	ffeffee4 	.word	0xffeffee4
201004ac:	ffeffee6 	.word	0xffeffee6
201004b0:	ffeffede 	.word	0xffeffede
201004b4:	400b8000 	.word	0x400b8000
201004b8:	ffeffe9c 	.word	0xffeffe9c
201004bc:	ffeffe66 	.word	0xffeffe66
201004c0:	ffeffe60 	.word	0xffeffe60
201004c4:	ffeffe52 	.word	0xffeffe52
201004c8:	ffeffe46 	.word	0xffeffe46
201004cc:	ffeffe38 	.word	0xffeffe38
201004d0:	ffeffdfc 	.word	0xffeffdfc
201004d4:	ffeffda6 	.word	0xffeffda6
201004d8:	ffeffd98 	.word	0xffeffd98
201004dc:	ffeffd92 	.word	0xffeffd92
201004e0:	ffeffd84 	.word	0xffeffd84
201004e4:	ffeffd7e 	.word	0xffeffd7e
201004e8:	ffeffd7c 	.word	0xffeffd7c
201004ec:	ffeffd62 	.word	0xffeffd62
201004f0:	ffeffd5c 	.word	0xffeffd5c
201004f4:	fffffc18 	.word	0xfffffc18
201004f8:	40090000 	.word	0x40090000
201004fc:	ffeffcfe 	.word	0xffeffcfe
20100500:	40098000 	.word	0x40098000
20100504:	6113      	str	r3, [r2, #16]
20100506:	4a09      	ldr	r2, [pc, #36]	; (2010052c <main+0x52c>)
20100508:	2344      	movs	r3, #68	; 0x44
2010050a:	18fb      	adds	r3, r7, r3
2010050c:	685b      	ldr	r3, [r3, #4]
2010050e:	2180      	movs	r1, #128	; 0x80
20100510:	0089      	lsls	r1, r1, #2
20100512:	468c      	mov	ip, r1
20100514:	4463      	add	r3, ip
20100516:	6153      	str	r3, [r2, #20]
20100518:	4a04      	ldr	r2, [pc, #16]	; (2010052c <main+0x52c>)
2010051a:	2344      	movs	r3, #68	; 0x44
2010051c:	18fb      	adds	r3, r7, r3
2010051e:	689b      	ldr	r3, [r3, #8]
20100520:	2180      	movs	r1, #128	; 0x80
20100522:	0089      	lsls	r1, r1, #2
20100524:	468c      	mov	ip, r1
20100526:	4463      	add	r3, ip
20100528:	6193      	str	r3, [r2, #24]
2010052a:	e650      	b.n	201001ce <main+0x1ce>
2010052c:	40098000 	.word	0x40098000

20100530 <sleep>:
20100530:	b580      	push	{r7, lr}
20100532:	b084      	sub	sp, #16
20100534:	af00      	add	r7, sp, #0
20100536:	6078      	str	r0, [r7, #4]
20100538:	2300      	movs	r3, #0
2010053a:	60fb      	str	r3, [r7, #12]
2010053c:	e00b      	b.n	20100556 <sleep+0x26>
2010053e:	46c0      	nop			; (mov r8, r8)
20100540:	4b09      	ldr	r3, [pc, #36]	; (20100568 <sleep+0x38>)
20100542:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100544:	2202      	movs	r2, #2
20100546:	4013      	ands	r3, r2
20100548:	d0fa      	beq.n	20100540 <sleep+0x10>
2010054a:	4b07      	ldr	r3, [pc, #28]	; (20100568 <sleep+0x38>)
2010054c:	2200      	movs	r2, #0
2010054e:	655a      	str	r2, [r3, #84]	; 0x54
20100550:	68fb      	ldr	r3, [r7, #12]
20100552:	3301      	adds	r3, #1
20100554:	60fb      	str	r3, [r7, #12]
20100556:	68fa      	ldr	r2, [r7, #12]
20100558:	687b      	ldr	r3, [r7, #4]
2010055a:	429a      	cmp	r2, r3
2010055c:	d3ef      	bcc.n	2010053e <sleep+0xe>
2010055e:	46c0      	nop			; (mov r8, r8)
20100560:	0018      	movs	r0, r3
20100562:	46bd      	mov	sp, r7
20100564:	b004      	add	sp, #16
20100566:	bd80      	pop	{r7, pc}
20100568:	40098000 	.word	0x40098000

2010056c <PortConfig>:
2010056c:	b580      	push	{r7, lr}
2010056e:	af00      	add	r7, sp, #0
20100570:	4b50      	ldr	r3, [pc, #320]	; (201006b4 <PortConfig+0x148>)
20100572:	4a50      	ldr	r2, [pc, #320]	; (201006b4 <PortConfig+0x148>)
20100574:	69d2      	ldr	r2, [r2, #28]
20100576:	2180      	movs	r1, #128	; 0x80
20100578:	0389      	lsls	r1, r1, #14
2010057a:	430a      	orrs	r2, r1
2010057c:	61da      	str	r2, [r3, #28]
2010057e:	4b4e      	ldr	r3, [pc, #312]	; (201006b8 <PortConfig+0x14c>)
20100580:	4a4d      	ldr	r2, [pc, #308]	; (201006b8 <PortConfig+0x14c>)
20100582:	6892      	ldr	r2, [r2, #8]
20100584:	494d      	ldr	r1, [pc, #308]	; (201006bc <PortConfig+0x150>)
20100586:	400a      	ands	r2, r1
20100588:	609a      	str	r2, [r3, #8]
2010058a:	4b4b      	ldr	r3, [pc, #300]	; (201006b8 <PortConfig+0x14c>)
2010058c:	4a4a      	ldr	r2, [pc, #296]	; (201006b8 <PortConfig+0x14c>)
2010058e:	6812      	ldr	r2, [r2, #0]
20100590:	494b      	ldr	r1, [pc, #300]	; (201006c0 <PortConfig+0x154>)
20100592:	400a      	ands	r2, r1
20100594:	601a      	str	r2, [r3, #0]
20100596:	4b48      	ldr	r3, [pc, #288]	; (201006b8 <PortConfig+0x14c>)
20100598:	4a47      	ldr	r2, [pc, #284]	; (201006b8 <PortConfig+0x14c>)
2010059a:	6852      	ldr	r2, [r2, #4]
2010059c:	2180      	movs	r1, #128	; 0x80
2010059e:	0209      	lsls	r1, r1, #8
201005a0:	430a      	orrs	r2, r1
201005a2:	605a      	str	r2, [r3, #4]
201005a4:	4b44      	ldr	r3, [pc, #272]	; (201006b8 <PortConfig+0x14c>)
201005a6:	4a44      	ldr	r2, [pc, #272]	; (201006b8 <PortConfig+0x14c>)
201005a8:	68d2      	ldr	r2, [r2, #12]
201005aa:	2180      	movs	r1, #128	; 0x80
201005ac:	0209      	lsls	r1, r1, #8
201005ae:	430a      	orrs	r2, r1
201005b0:	60da      	str	r2, [r3, #12]
201005b2:	4b41      	ldr	r3, [pc, #260]	; (201006b8 <PortConfig+0x14c>)
201005b4:	4a40      	ldr	r2, [pc, #256]	; (201006b8 <PortConfig+0x14c>)
201005b6:	6992      	ldr	r2, [r2, #24]
201005b8:	21c0      	movs	r1, #192	; 0xc0
201005ba:	0609      	lsls	r1, r1, #24
201005bc:	430a      	orrs	r2, r1
201005be:	619a      	str	r2, [r3, #24]
201005c0:	4b3d      	ldr	r3, [pc, #244]	; (201006b8 <PortConfig+0x14c>)
201005c2:	4a3d      	ldr	r2, [pc, #244]	; (201006b8 <PortConfig+0x14c>)
201005c4:	6892      	ldr	r2, [r2, #8]
201005c6:	493f      	ldr	r1, [pc, #252]	; (201006c4 <PortConfig+0x158>)
201005c8:	430a      	orrs	r2, r1
201005ca:	609a      	str	r2, [r3, #8]
201005cc:	4b3a      	ldr	r3, [pc, #232]	; (201006b8 <PortConfig+0x14c>)
201005ce:	4a3a      	ldr	r2, [pc, #232]	; (201006b8 <PortConfig+0x14c>)
201005d0:	6852      	ldr	r2, [r2, #4]
201005d2:	21fc      	movs	r1, #252	; 0xfc
201005d4:	0109      	lsls	r1, r1, #4
201005d6:	430a      	orrs	r2, r1
201005d8:	605a      	str	r2, [r3, #4]
201005da:	4b37      	ldr	r3, [pc, #220]	; (201006b8 <PortConfig+0x14c>)
201005dc:	4a36      	ldr	r2, [pc, #216]	; (201006b8 <PortConfig+0x14c>)
201005de:	68d2      	ldr	r2, [r2, #12]
201005e0:	21fc      	movs	r1, #252	; 0xfc
201005e2:	0109      	lsls	r1, r1, #4
201005e4:	430a      	orrs	r2, r1
201005e6:	60da      	str	r2, [r3, #12]
201005e8:	4b33      	ldr	r3, [pc, #204]	; (201006b8 <PortConfig+0x14c>)
201005ea:	4a33      	ldr	r2, [pc, #204]	; (201006b8 <PortConfig+0x14c>)
201005ec:	6992      	ldr	r2, [r2, #24]
201005ee:	4936      	ldr	r1, [pc, #216]	; (201006c8 <PortConfig+0x15c>)
201005f0:	430a      	orrs	r2, r1
201005f2:	619a      	str	r2, [r3, #24]
201005f4:	4b2f      	ldr	r3, [pc, #188]	; (201006b4 <PortConfig+0x148>)
201005f6:	4a2f      	ldr	r2, [pc, #188]	; (201006b4 <PortConfig+0x148>)
201005f8:	69d2      	ldr	r2, [r2, #28]
201005fa:	2180      	movs	r1, #128	; 0x80
201005fc:	0489      	lsls	r1, r1, #18
201005fe:	430a      	orrs	r2, r1
20100600:	61da      	str	r2, [r3, #28]
20100602:	4b32      	ldr	r3, [pc, #200]	; (201006cc <PortConfig+0x160>)
20100604:	4a31      	ldr	r2, [pc, #196]	; (201006cc <PortConfig+0x160>)
20100606:	68d2      	ldr	r2, [r2, #12]
20100608:	2102      	movs	r1, #2
2010060a:	438a      	bics	r2, r1
2010060c:	60da      	str	r2, [r3, #12]
2010060e:	4b29      	ldr	r3, [pc, #164]	; (201006b4 <PortConfig+0x148>)
20100610:	4a28      	ldr	r2, [pc, #160]	; (201006b4 <PortConfig+0x148>)
20100612:	69d2      	ldr	r2, [r2, #28]
20100614:	2180      	movs	r1, #128	; 0x80
20100616:	0449      	lsls	r1, r1, #17
20100618:	430a      	orrs	r2, r1
2010061a:	61da      	str	r2, [r3, #28]
2010061c:	4b2c      	ldr	r3, [pc, #176]	; (201006d0 <PortConfig+0x164>)
2010061e:	4a2c      	ldr	r2, [pc, #176]	; (201006d0 <PortConfig+0x164>)
20100620:	6892      	ldr	r2, [r2, #8]
20100622:	492c      	ldr	r1, [pc, #176]	; (201006d4 <PortConfig+0x168>)
20100624:	400a      	ands	r2, r1
20100626:	609a      	str	r2, [r3, #8]
20100628:	4b29      	ldr	r3, [pc, #164]	; (201006d0 <PortConfig+0x164>)
2010062a:	4a29      	ldr	r2, [pc, #164]	; (201006d0 <PortConfig+0x164>)
2010062c:	6892      	ldr	r2, [r2, #8]
2010062e:	21a0      	movs	r1, #160	; 0xa0
20100630:	02c9      	lsls	r1, r1, #11
20100632:	430a      	orrs	r2, r1
20100634:	609a      	str	r2, [r3, #8]
20100636:	4b26      	ldr	r3, [pc, #152]	; (201006d0 <PortConfig+0x164>)
20100638:	4a25      	ldr	r2, [pc, #148]	; (201006d0 <PortConfig+0x164>)
2010063a:	68d2      	ldr	r2, [r2, #12]
2010063c:	21c0      	movs	r1, #192	; 0xc0
2010063e:	0089      	lsls	r1, r1, #2
20100640:	430a      	orrs	r2, r1
20100642:	60da      	str	r2, [r3, #12]
20100644:	4b22      	ldr	r3, [pc, #136]	; (201006d0 <PortConfig+0x164>)
20100646:	4a22      	ldr	r2, [pc, #136]	; (201006d0 <PortConfig+0x164>)
20100648:	6992      	ldr	r2, [r2, #24]
2010064a:	21c0      	movs	r1, #192	; 0xc0
2010064c:	0309      	lsls	r1, r1, #12
2010064e:	430a      	orrs	r2, r1
20100650:	619a      	str	r2, [r3, #24]
20100652:	4b1f      	ldr	r3, [pc, #124]	; (201006d0 <PortConfig+0x164>)
20100654:	4a1e      	ldr	r2, [pc, #120]	; (201006d0 <PortConfig+0x164>)
20100656:	6852      	ldr	r2, [r2, #4]
20100658:	2180      	movs	r1, #128	; 0x80
2010065a:	0089      	lsls	r1, r1, #2
2010065c:	430a      	orrs	r2, r1
2010065e:	605a      	str	r2, [r3, #4]
20100660:	4b1b      	ldr	r3, [pc, #108]	; (201006d0 <PortConfig+0x164>)
20100662:	4a1b      	ldr	r2, [pc, #108]	; (201006d0 <PortConfig+0x164>)
20100664:	6852      	ldr	r2, [r2, #4]
20100666:	491c      	ldr	r1, [pc, #112]	; (201006d8 <PortConfig+0x16c>)
20100668:	400a      	ands	r2, r1
2010066a:	605a      	str	r2, [r3, #4]
2010066c:	4b11      	ldr	r3, [pc, #68]	; (201006b4 <PortConfig+0x148>)
2010066e:	4a11      	ldr	r2, [pc, #68]	; (201006b4 <PortConfig+0x148>)
20100670:	69d2      	ldr	r2, [r2, #28]
20100672:	2180      	movs	r1, #128	; 0x80
20100674:	0409      	lsls	r1, r1, #16
20100676:	430a      	orrs	r2, r1
20100678:	61da      	str	r2, [r3, #28]
2010067a:	4b18      	ldr	r3, [pc, #96]	; (201006dc <PortConfig+0x170>)
2010067c:	2200      	movs	r2, #0
2010067e:	609a      	str	r2, [r3, #8]
20100680:	4b16      	ldr	r3, [pc, #88]	; (201006dc <PortConfig+0x170>)
20100682:	2200      	movs	r2, #0
20100684:	601a      	str	r2, [r3, #0]
20100686:	4b15      	ldr	r3, [pc, #84]	; (201006dc <PortConfig+0x170>)
20100688:	4a14      	ldr	r2, [pc, #80]	; (201006dc <PortConfig+0x170>)
2010068a:	6852      	ldr	r2, [r2, #4]
2010068c:	2160      	movs	r1, #96	; 0x60
2010068e:	430a      	orrs	r2, r1
20100690:	605a      	str	r2, [r3, #4]
20100692:	4b12      	ldr	r3, [pc, #72]	; (201006dc <PortConfig+0x170>)
20100694:	4a11      	ldr	r2, [pc, #68]	; (201006dc <PortConfig+0x170>)
20100696:	68d2      	ldr	r2, [r2, #12]
20100698:	2160      	movs	r1, #96	; 0x60
2010069a:	430a      	orrs	r2, r1
2010069c:	60da      	str	r2, [r3, #12]
2010069e:	4b0f      	ldr	r3, [pc, #60]	; (201006dc <PortConfig+0x170>)
201006a0:	4a0e      	ldr	r2, [pc, #56]	; (201006dc <PortConfig+0x170>)
201006a2:	6992      	ldr	r2, [r2, #24]
201006a4:	21f0      	movs	r1, #240	; 0xf0
201006a6:	0189      	lsls	r1, r1, #6
201006a8:	430a      	orrs	r2, r1
201006aa:	619a      	str	r2, [r3, #24]
201006ac:	46c0      	nop			; (mov r8, r8)
201006ae:	46bd      	mov	sp, r7
201006b0:	bd80      	pop	{r7, pc}
201006b2:	46c0      	nop			; (mov r8, r8)
201006b4:	40020000 	.word	0x40020000
201006b8:	400a8000 	.word	0x400a8000
201006bc:	ff000fff 	.word	0xff000fff
201006c0:	ffff7fff 	.word	0xffff7fff
201006c4:	00aaa000 	.word	0x00aaa000
201006c8:	00fff000 	.word	0x00fff000
201006cc:	400c8000 	.word	0x400c8000
201006d0:	400c0000 	.word	0x400c0000
201006d4:	fff0ffff 	.word	0xfff0ffff
201006d8:	fffffeff 	.word	0xfffffeff
201006dc:	400b8000 	.word	0x400b8000

201006e0 <ClkConfig>:
201006e0:	b580      	push	{r7, lr}
201006e2:	af00      	add	r7, sp, #0
201006e4:	4b18      	ldr	r3, [pc, #96]	; (20100748 <ClkConfig+0x68>)
201006e6:	4a18      	ldr	r2, [pc, #96]	; (20100748 <ClkConfig+0x68>)
201006e8:	6892      	ldr	r2, [r2, #8]
201006ea:	2101      	movs	r1, #1
201006ec:	430a      	orrs	r2, r1
201006ee:	609a      	str	r2, [r3, #8]
201006f0:	46c0      	nop			; (mov r8, r8)
201006f2:	4b15      	ldr	r3, [pc, #84]	; (20100748 <ClkConfig+0x68>)
201006f4:	681b      	ldr	r3, [r3, #0]
201006f6:	2204      	movs	r2, #4
201006f8:	4013      	ands	r3, r2
201006fa:	d0fa      	beq.n	201006f2 <ClkConfig+0x12>
201006fc:	4b12      	ldr	r3, [pc, #72]	; (20100748 <ClkConfig+0x68>)
201006fe:	4a12      	ldr	r2, [pc, #72]	; (20100748 <ClkConfig+0x68>)
20100700:	68d2      	ldr	r2, [r2, #12]
20100702:	2102      	movs	r1, #2
20100704:	430a      	orrs	r2, r1
20100706:	60da      	str	r2, [r3, #12]
20100708:	4b0f      	ldr	r3, [pc, #60]	; (20100748 <ClkConfig+0x68>)
2010070a:	4a10      	ldr	r2, [pc, #64]	; (2010074c <ClkConfig+0x6c>)
2010070c:	605a      	str	r2, [r3, #4]
2010070e:	46c0      	nop			; (mov r8, r8)
20100710:	4b0d      	ldr	r3, [pc, #52]	; (20100748 <ClkConfig+0x68>)
20100712:	681b      	ldr	r3, [r3, #0]
20100714:	2202      	movs	r2, #2
20100716:	4013      	ands	r3, r2
20100718:	d0fa      	beq.n	20100710 <ClkConfig+0x30>
2010071a:	4b0d      	ldr	r3, [pc, #52]	; (20100750 <ClkConfig+0x70>)
2010071c:	4a0c      	ldr	r2, [pc, #48]	; (20100750 <ClkConfig+0x70>)
2010071e:	6812      	ldr	r2, [r2, #0]
20100720:	2120      	movs	r1, #32
20100722:	430a      	orrs	r2, r1
20100724:	601a      	str	r2, [r3, #0]
20100726:	4b08      	ldr	r3, [pc, #32]	; (20100748 <ClkConfig+0x68>)
20100728:	4a07      	ldr	r2, [pc, #28]	; (20100748 <ClkConfig+0x68>)
2010072a:	68d2      	ldr	r2, [r2, #12]
2010072c:	2180      	movs	r1, #128	; 0x80
2010072e:	0049      	lsls	r1, r1, #1
20100730:	430a      	orrs	r2, r1
20100732:	60da      	str	r2, [r3, #12]
20100734:	4b04      	ldr	r3, [pc, #16]	; (20100748 <ClkConfig+0x68>)
20100736:	4a04      	ldr	r2, [pc, #16]	; (20100748 <ClkConfig+0x68>)
20100738:	68d2      	ldr	r2, [r2, #12]
2010073a:	2104      	movs	r1, #4
2010073c:	430a      	orrs	r2, r1
2010073e:	60da      	str	r2, [r3, #12]
20100740:	46c0      	nop			; (mov r8, r8)
20100742:	46bd      	mov	sp, r7
20100744:	bd80      	pop	{r7, pc}
20100746:	46c0      	nop			; (mov r8, r8)
20100748:	40020000 	.word	0x40020000
2010074c:	00000e04 	.word	0x00000e04
20100750:	40018000 	.word	0x40018000

20100754 <TimerConfig>:
20100754:	b580      	push	{r7, lr}
20100756:	af00      	add	r7, sp, #0
20100758:	4b7a      	ldr	r3, [pc, #488]	; (20100944 <TimerConfig+0x1f0>)
2010075a:	4a7a      	ldr	r2, [pc, #488]	; (20100944 <TimerConfig+0x1f0>)
2010075c:	69d2      	ldr	r2, [r2, #28]
2010075e:	2180      	movs	r1, #128	; 0x80
20100760:	0309      	lsls	r1, r1, #12
20100762:	430a      	orrs	r2, r1
20100764:	61da      	str	r2, [r3, #28]
20100766:	4b77      	ldr	r3, [pc, #476]	; (20100944 <TimerConfig+0x1f0>)
20100768:	4a76      	ldr	r2, [pc, #472]	; (20100944 <TimerConfig+0x1f0>)
2010076a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010076c:	2180      	movs	r1, #128	; 0x80
2010076e:	04c9      	lsls	r1, r1, #19
20100770:	430a      	orrs	r2, r1
20100772:	629a      	str	r2, [r3, #40]	; 0x28
20100774:	4b73      	ldr	r3, [pc, #460]	; (20100944 <TimerConfig+0x1f0>)
20100776:	4a73      	ldr	r2, [pc, #460]	; (20100944 <TimerConfig+0x1f0>)
20100778:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010077a:	4973      	ldr	r1, [pc, #460]	; (20100948 <TimerConfig+0x1f4>)
2010077c:	400a      	ands	r2, r1
2010077e:	629a      	str	r2, [r3, #40]	; 0x28
20100780:	4b72      	ldr	r3, [pc, #456]	; (2010094c <TimerConfig+0x1f8>)
20100782:	2200      	movs	r2, #0
20100784:	601a      	str	r2, [r3, #0]
20100786:	4b71      	ldr	r3, [pc, #452]	; (2010094c <TimerConfig+0x1f8>)
20100788:	2204      	movs	r2, #4
2010078a:	605a      	str	r2, [r3, #4]
2010078c:	4b6f      	ldr	r3, [pc, #444]	; (2010094c <TimerConfig+0x1f8>)
2010078e:	4a70      	ldr	r2, [pc, #448]	; (20100950 <TimerConfig+0x1fc>)
20100790:	609a      	str	r2, [r3, #8]
20100792:	4b6e      	ldr	r3, [pc, #440]	; (2010094c <TimerConfig+0x1f8>)
20100794:	2280      	movs	r2, #128	; 0x80
20100796:	0092      	lsls	r2, r2, #2
20100798:	611a      	str	r2, [r3, #16]
2010079a:	4b6c      	ldr	r3, [pc, #432]	; (2010094c <TimerConfig+0x1f8>)
2010079c:	2280      	movs	r2, #128	; 0x80
2010079e:	0092      	lsls	r2, r2, #2
201007a0:	615a      	str	r2, [r3, #20]
201007a2:	4b6a      	ldr	r3, [pc, #424]	; (2010094c <TimerConfig+0x1f8>)
201007a4:	2280      	movs	r2, #128	; 0x80
201007a6:	0092      	lsls	r2, r2, #2
201007a8:	619a      	str	r2, [r3, #24]
201007aa:	4b68      	ldr	r3, [pc, #416]	; (2010094c <TimerConfig+0x1f8>)
201007ac:	4a67      	ldr	r2, [pc, #412]	; (2010094c <TimerConfig+0x1f8>)
201007ae:	6a12      	ldr	r2, [r2, #32]
201007b0:	4968      	ldr	r1, [pc, #416]	; (20100954 <TimerConfig+0x200>)
201007b2:	400a      	ands	r2, r1
201007b4:	621a      	str	r2, [r3, #32]
201007b6:	4b65      	ldr	r3, [pc, #404]	; (2010094c <TimerConfig+0x1f8>)
201007b8:	4a64      	ldr	r2, [pc, #400]	; (2010094c <TimerConfig+0x1f8>)
201007ba:	6a12      	ldr	r2, [r2, #32]
201007bc:	21e0      	movs	r1, #224	; 0xe0
201007be:	0109      	lsls	r1, r1, #4
201007c0:	430a      	orrs	r2, r1
201007c2:	621a      	str	r2, [r3, #32]
201007c4:	4b61      	ldr	r3, [pc, #388]	; (2010094c <TimerConfig+0x1f8>)
201007c6:	4a61      	ldr	r2, [pc, #388]	; (2010094c <TimerConfig+0x1f8>)
201007c8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201007ca:	210f      	movs	r1, #15
201007cc:	438a      	bics	r2, r1
201007ce:	631a      	str	r2, [r3, #48]	; 0x30
201007d0:	4b5e      	ldr	r3, [pc, #376]	; (2010094c <TimerConfig+0x1f8>)
201007d2:	4a5e      	ldr	r2, [pc, #376]	; (2010094c <TimerConfig+0x1f8>)
201007d4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201007d6:	210c      	movs	r1, #12
201007d8:	430a      	orrs	r2, r1
201007da:	631a      	str	r2, [r3, #48]	; 0x30
201007dc:	4b5b      	ldr	r3, [pc, #364]	; (2010094c <TimerConfig+0x1f8>)
201007de:	4a5b      	ldr	r2, [pc, #364]	; (2010094c <TimerConfig+0x1f8>)
201007e0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201007e2:	2101      	movs	r1, #1
201007e4:	430a      	orrs	r2, r1
201007e6:	631a      	str	r2, [r3, #48]	; 0x30
201007e8:	4b58      	ldr	r3, [pc, #352]	; (2010094c <TimerConfig+0x1f8>)
201007ea:	4a58      	ldr	r2, [pc, #352]	; (2010094c <TimerConfig+0x1f8>)
201007ec:	6b12      	ldr	r2, [r2, #48]	; 0x30
201007ee:	495a      	ldr	r1, [pc, #360]	; (20100958 <TimerConfig+0x204>)
201007f0:	400a      	ands	r2, r1
201007f2:	631a      	str	r2, [r3, #48]	; 0x30
201007f4:	4b55      	ldr	r3, [pc, #340]	; (2010094c <TimerConfig+0x1f8>)
201007f6:	4a55      	ldr	r2, [pc, #340]	; (2010094c <TimerConfig+0x1f8>)
201007f8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201007fa:	21c0      	movs	r1, #192	; 0xc0
201007fc:	0109      	lsls	r1, r1, #4
201007fe:	430a      	orrs	r2, r1
20100800:	631a      	str	r2, [r3, #48]	; 0x30
20100802:	4b52      	ldr	r3, [pc, #328]	; (2010094c <TimerConfig+0x1f8>)
20100804:	4a51      	ldr	r2, [pc, #324]	; (2010094c <TimerConfig+0x1f8>)
20100806:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100808:	2180      	movs	r1, #128	; 0x80
2010080a:	0049      	lsls	r1, r1, #1
2010080c:	430a      	orrs	r2, r1
2010080e:	631a      	str	r2, [r3, #48]	; 0x30
20100810:	4b4e      	ldr	r3, [pc, #312]	; (2010094c <TimerConfig+0x1f8>)
20100812:	4a4e      	ldr	r2, [pc, #312]	; (2010094c <TimerConfig+0x1f8>)
20100814:	6e12      	ldr	r2, [r2, #96]	; 0x60
20100816:	2108      	movs	r1, #8
20100818:	430a      	orrs	r2, r1
2010081a:	661a      	str	r2, [r3, #96]	; 0x60
2010081c:	4b4b      	ldr	r3, [pc, #300]	; (2010094c <TimerConfig+0x1f8>)
2010081e:	4a4b      	ldr	r2, [pc, #300]	; (2010094c <TimerConfig+0x1f8>)
20100820:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100822:	494c      	ldr	r1, [pc, #304]	; (20100954 <TimerConfig+0x200>)
20100824:	400a      	ands	r2, r1
20100826:	625a      	str	r2, [r3, #36]	; 0x24
20100828:	4b48      	ldr	r3, [pc, #288]	; (2010094c <TimerConfig+0x1f8>)
2010082a:	4a48      	ldr	r2, [pc, #288]	; (2010094c <TimerConfig+0x1f8>)
2010082c:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010082e:	21e0      	movs	r1, #224	; 0xe0
20100830:	0109      	lsls	r1, r1, #4
20100832:	430a      	orrs	r2, r1
20100834:	625a      	str	r2, [r3, #36]	; 0x24
20100836:	4b45      	ldr	r3, [pc, #276]	; (2010094c <TimerConfig+0x1f8>)
20100838:	4a44      	ldr	r2, [pc, #272]	; (2010094c <TimerConfig+0x1f8>)
2010083a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010083c:	210f      	movs	r1, #15
2010083e:	438a      	bics	r2, r1
20100840:	635a      	str	r2, [r3, #52]	; 0x34
20100842:	4b42      	ldr	r3, [pc, #264]	; (2010094c <TimerConfig+0x1f8>)
20100844:	4a41      	ldr	r2, [pc, #260]	; (2010094c <TimerConfig+0x1f8>)
20100846:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100848:	210c      	movs	r1, #12
2010084a:	430a      	orrs	r2, r1
2010084c:	635a      	str	r2, [r3, #52]	; 0x34
2010084e:	4b3f      	ldr	r3, [pc, #252]	; (2010094c <TimerConfig+0x1f8>)
20100850:	4a3e      	ldr	r2, [pc, #248]	; (2010094c <TimerConfig+0x1f8>)
20100852:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100854:	2101      	movs	r1, #1
20100856:	430a      	orrs	r2, r1
20100858:	635a      	str	r2, [r3, #52]	; 0x34
2010085a:	4b3c      	ldr	r3, [pc, #240]	; (2010094c <TimerConfig+0x1f8>)
2010085c:	4a3b      	ldr	r2, [pc, #236]	; (2010094c <TimerConfig+0x1f8>)
2010085e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100860:	493d      	ldr	r1, [pc, #244]	; (20100958 <TimerConfig+0x204>)
20100862:	400a      	ands	r2, r1
20100864:	635a      	str	r2, [r3, #52]	; 0x34
20100866:	4b39      	ldr	r3, [pc, #228]	; (2010094c <TimerConfig+0x1f8>)
20100868:	4a38      	ldr	r2, [pc, #224]	; (2010094c <TimerConfig+0x1f8>)
2010086a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010086c:	21c0      	movs	r1, #192	; 0xc0
2010086e:	0109      	lsls	r1, r1, #4
20100870:	430a      	orrs	r2, r1
20100872:	635a      	str	r2, [r3, #52]	; 0x34
20100874:	4b35      	ldr	r3, [pc, #212]	; (2010094c <TimerConfig+0x1f8>)
20100876:	4a35      	ldr	r2, [pc, #212]	; (2010094c <TimerConfig+0x1f8>)
20100878:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010087a:	2180      	movs	r1, #128	; 0x80
2010087c:	0049      	lsls	r1, r1, #1
2010087e:	430a      	orrs	r2, r1
20100880:	635a      	str	r2, [r3, #52]	; 0x34
20100882:	4b32      	ldr	r3, [pc, #200]	; (2010094c <TimerConfig+0x1f8>)
20100884:	4a31      	ldr	r2, [pc, #196]	; (2010094c <TimerConfig+0x1f8>)
20100886:	6e52      	ldr	r2, [r2, #100]	; 0x64
20100888:	2108      	movs	r1, #8
2010088a:	430a      	orrs	r2, r1
2010088c:	665a      	str	r2, [r3, #100]	; 0x64
2010088e:	4b2f      	ldr	r3, [pc, #188]	; (2010094c <TimerConfig+0x1f8>)
20100890:	4a2e      	ldr	r2, [pc, #184]	; (2010094c <TimerConfig+0x1f8>)
20100892:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100894:	492f      	ldr	r1, [pc, #188]	; (20100954 <TimerConfig+0x200>)
20100896:	400a      	ands	r2, r1
20100898:	629a      	str	r2, [r3, #40]	; 0x28
2010089a:	4b2c      	ldr	r3, [pc, #176]	; (2010094c <TimerConfig+0x1f8>)
2010089c:	4a2b      	ldr	r2, [pc, #172]	; (2010094c <TimerConfig+0x1f8>)
2010089e:	6a92      	ldr	r2, [r2, #40]	; 0x28
201008a0:	21e0      	movs	r1, #224	; 0xe0
201008a2:	0109      	lsls	r1, r1, #4
201008a4:	430a      	orrs	r2, r1
201008a6:	629a      	str	r2, [r3, #40]	; 0x28
201008a8:	4b28      	ldr	r3, [pc, #160]	; (2010094c <TimerConfig+0x1f8>)
201008aa:	4a28      	ldr	r2, [pc, #160]	; (2010094c <TimerConfig+0x1f8>)
201008ac:	6b92      	ldr	r2, [r2, #56]	; 0x38
201008ae:	210f      	movs	r1, #15
201008b0:	438a      	bics	r2, r1
201008b2:	639a      	str	r2, [r3, #56]	; 0x38
201008b4:	4b25      	ldr	r3, [pc, #148]	; (2010094c <TimerConfig+0x1f8>)
201008b6:	4a25      	ldr	r2, [pc, #148]	; (2010094c <TimerConfig+0x1f8>)
201008b8:	6b92      	ldr	r2, [r2, #56]	; 0x38
201008ba:	210c      	movs	r1, #12
201008bc:	430a      	orrs	r2, r1
201008be:	639a      	str	r2, [r3, #56]	; 0x38
201008c0:	4b22      	ldr	r3, [pc, #136]	; (2010094c <TimerConfig+0x1f8>)
201008c2:	4a22      	ldr	r2, [pc, #136]	; (2010094c <TimerConfig+0x1f8>)
201008c4:	6b92      	ldr	r2, [r2, #56]	; 0x38
201008c6:	2101      	movs	r1, #1
201008c8:	430a      	orrs	r2, r1
201008ca:	639a      	str	r2, [r3, #56]	; 0x38
201008cc:	4b1f      	ldr	r3, [pc, #124]	; (2010094c <TimerConfig+0x1f8>)
201008ce:	4a1f      	ldr	r2, [pc, #124]	; (2010094c <TimerConfig+0x1f8>)
201008d0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201008d2:	4921      	ldr	r1, [pc, #132]	; (20100958 <TimerConfig+0x204>)
201008d4:	400a      	ands	r2, r1
201008d6:	639a      	str	r2, [r3, #56]	; 0x38
201008d8:	4b1c      	ldr	r3, [pc, #112]	; (2010094c <TimerConfig+0x1f8>)
201008da:	4a1c      	ldr	r2, [pc, #112]	; (2010094c <TimerConfig+0x1f8>)
201008dc:	6b92      	ldr	r2, [r2, #56]	; 0x38
201008de:	21c0      	movs	r1, #192	; 0xc0
201008e0:	0109      	lsls	r1, r1, #4
201008e2:	430a      	orrs	r2, r1
201008e4:	639a      	str	r2, [r3, #56]	; 0x38
201008e6:	4b19      	ldr	r3, [pc, #100]	; (2010094c <TimerConfig+0x1f8>)
201008e8:	4a18      	ldr	r2, [pc, #96]	; (2010094c <TimerConfig+0x1f8>)
201008ea:	6b92      	ldr	r2, [r2, #56]	; 0x38
201008ec:	2180      	movs	r1, #128	; 0x80
201008ee:	0049      	lsls	r1, r1, #1
201008f0:	430a      	orrs	r2, r1
201008f2:	639a      	str	r2, [r3, #56]	; 0x38
201008f4:	4b15      	ldr	r3, [pc, #84]	; (2010094c <TimerConfig+0x1f8>)
201008f6:	4a15      	ldr	r2, [pc, #84]	; (2010094c <TimerConfig+0x1f8>)
201008f8:	6e92      	ldr	r2, [r2, #104]	; 0x68
201008fa:	2108      	movs	r1, #8
201008fc:	430a      	orrs	r2, r1
201008fe:	669a      	str	r2, [r3, #104]	; 0x68
20100900:	4b12      	ldr	r3, [pc, #72]	; (2010094c <TimerConfig+0x1f8>)
20100902:	4a12      	ldr	r2, [pc, #72]	; (2010094c <TimerConfig+0x1f8>)
20100904:	6c12      	ldr	r2, [r2, #64]	; 0x40
20100906:	2196      	movs	r1, #150	; 0x96
20100908:	0189      	lsls	r1, r1, #6
2010090a:	430a      	orrs	r2, r1
2010090c:	641a      	str	r2, [r3, #64]	; 0x40
2010090e:	4b0f      	ldr	r3, [pc, #60]	; (2010094c <TimerConfig+0x1f8>)
20100910:	4a0e      	ldr	r2, [pc, #56]	; (2010094c <TimerConfig+0x1f8>)
20100912:	6c52      	ldr	r2, [r2, #68]	; 0x44
20100914:	2196      	movs	r1, #150	; 0x96
20100916:	0189      	lsls	r1, r1, #6
20100918:	430a      	orrs	r2, r1
2010091a:	645a      	str	r2, [r3, #68]	; 0x44
2010091c:	4b0b      	ldr	r3, [pc, #44]	; (2010094c <TimerConfig+0x1f8>)
2010091e:	4a0b      	ldr	r2, [pc, #44]	; (2010094c <TimerConfig+0x1f8>)
20100920:	6c92      	ldr	r2, [r2, #72]	; 0x48
20100922:	2196      	movs	r1, #150	; 0x96
20100924:	0189      	lsls	r1, r1, #6
20100926:	430a      	orrs	r2, r1
20100928:	649a      	str	r2, [r3, #72]	; 0x48
2010092a:	4b08      	ldr	r3, [pc, #32]	; (2010094c <TimerConfig+0x1f8>)
2010092c:	4a07      	ldr	r2, [pc, #28]	; (2010094c <TimerConfig+0x1f8>)
2010092e:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100930:	21f0      	movs	r1, #240	; 0xf0
20100932:	0149      	lsls	r1, r1, #5
20100934:	430a      	orrs	r2, r1
20100936:	659a      	str	r2, [r3, #88]	; 0x58
20100938:	4b04      	ldr	r3, [pc, #16]	; (2010094c <TimerConfig+0x1f8>)
2010093a:	2201      	movs	r2, #1
2010093c:	60da      	str	r2, [r3, #12]
2010093e:	46c0      	nop			; (mov r8, r8)
20100940:	46bd      	mov	sp, r7
20100942:	bd80      	pop	{r7, pc}
20100944:	40020000 	.word	0x40020000
20100948:	ff00ffff 	.word	0xff00ffff
2010094c:	40098000 	.word	0x40098000
20100950:	000003ff 	.word	0x000003ff
20100954:	fffff1ff 	.word	0xfffff1ff
20100958:	fffff0ff 	.word	0xfffff0ff

2010095c <adc_init>:
2010095c:	b580      	push	{r7, lr}
2010095e:	af00      	add	r7, sp, #0
20100960:	4b0f      	ldr	r3, [pc, #60]	; (201009a0 <adc_init+0x44>)
20100962:	4a0f      	ldr	r2, [pc, #60]	; (201009a0 <adc_init+0x44>)
20100964:	69d2      	ldr	r2, [r2, #28]
20100966:	2180      	movs	r1, #128	; 0x80
20100968:	0289      	lsls	r1, r1, #10
2010096a:	430a      	orrs	r2, r1
2010096c:	61da      	str	r2, [r3, #28]
2010096e:	4b0c      	ldr	r3, [pc, #48]	; (201009a0 <adc_init+0x44>)
20100970:	4a0c      	ldr	r2, [pc, #48]	; (201009a4 <adc_init+0x48>)
20100972:	615a      	str	r2, [r3, #20]
20100974:	4b0c      	ldr	r3, [pc, #48]	; (201009a8 <adc_init+0x4c>)
20100976:	2200      	movs	r2, #0
20100978:	601a      	str	r2, [r3, #0]
2010097a:	4b0b      	ldr	r3, [pc, #44]	; (201009a8 <adc_init+0x4c>)
2010097c:	4a0a      	ldr	r2, [pc, #40]	; (201009a8 <adc_init+0x4c>)
2010097e:	6812      	ldr	r2, [r2, #0]
20100980:	490a      	ldr	r1, [pc, #40]	; (201009ac <adc_init+0x50>)
20100982:	430a      	orrs	r2, r1
20100984:	601a      	str	r2, [r3, #0]
20100986:	4b08      	ldr	r3, [pc, #32]	; (201009a8 <adc_init+0x4c>)
20100988:	4a07      	ldr	r2, [pc, #28]	; (201009a8 <adc_init+0x4c>)
2010098a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010098c:	2139      	movs	r1, #57	; 0x39
2010098e:	430a      	orrs	r2, r1
20100990:	629a      	str	r2, [r3, #40]	; 0x28
20100992:	4b05      	ldr	r3, [pc, #20]	; (201009a8 <adc_init+0x4c>)
20100994:	2210      	movs	r2, #16
20100996:	621a      	str	r2, [r3, #32]
20100998:	46c0      	nop			; (mov r8, r8)
2010099a:	46bd      	mov	sp, r7
2010099c:	bd80      	pop	{r7, pc}
2010099e:	46c0      	nop			; (mov r8, r8)
201009a0:	40020000 	.word	0x40020000
201009a4:	00002020 	.word	0x00002020
201009a8:	40088000 	.word	0x40088000
201009ac:	00000205 	.word	0x00000205

201009b0 <dac_init>:
201009b0:	b580      	push	{r7, lr}
201009b2:	af00      	add	r7, sp, #0
201009b4:	4b07      	ldr	r3, [pc, #28]	; (201009d4 <dac_init+0x24>)
201009b6:	4a07      	ldr	r2, [pc, #28]	; (201009d4 <dac_init+0x24>)
201009b8:	69d2      	ldr	r2, [r2, #28]
201009ba:	2180      	movs	r1, #128	; 0x80
201009bc:	02c9      	lsls	r1, r1, #11
201009be:	430a      	orrs	r2, r1
201009c0:	61da      	str	r2, [r3, #28]
201009c2:	4b05      	ldr	r3, [pc, #20]	; (201009d8 <dac_init+0x28>)
201009c4:	4a04      	ldr	r2, [pc, #16]	; (201009d8 <dac_init+0x28>)
201009c6:	6812      	ldr	r2, [r2, #0]
201009c8:	2104      	movs	r1, #4
201009ca:	430a      	orrs	r2, r1
201009cc:	601a      	str	r2, [r3, #0]
201009ce:	46c0      	nop			; (mov r8, r8)
201009d0:	46bd      	mov	sp, r7
201009d2:	bd80      	pop	{r7, pc}
201009d4:	40020000 	.word	0x40020000
201009d8:	40090000 	.word	0x40090000

201009dc <ssi_init>:
201009dc:	b580      	push	{r7, lr}
201009de:	af00      	add	r7, sp, #0
201009e0:	4b0c      	ldr	r3, [pc, #48]	; (20100a14 <ssi_init+0x38>)
201009e2:	4a0c      	ldr	r2, [pc, #48]	; (20100a14 <ssi_init+0x38>)
201009e4:	69d2      	ldr	r2, [r2, #28]
201009e6:	2180      	movs	r1, #128	; 0x80
201009e8:	0349      	lsls	r1, r1, #13
201009ea:	430a      	orrs	r2, r1
201009ec:	61da      	str	r2, [r3, #28]
201009ee:	4b09      	ldr	r3, [pc, #36]	; (20100a14 <ssi_init+0x38>)
201009f0:	4a09      	ldr	r2, [pc, #36]	; (20100a18 <ssi_init+0x3c>)
201009f2:	62da      	str	r2, [r3, #44]	; 0x2c
201009f4:	4b09      	ldr	r3, [pc, #36]	; (20100a1c <ssi_init+0x40>)
201009f6:	2200      	movs	r2, #0
201009f8:	605a      	str	r2, [r3, #4]
201009fa:	4b08      	ldr	r3, [pc, #32]	; (20100a1c <ssi_init+0x40>)
201009fc:	220a      	movs	r2, #10
201009fe:	611a      	str	r2, [r3, #16]
20100a00:	4b06      	ldr	r3, [pc, #24]	; (20100a1c <ssi_init+0x40>)
20100a02:	4a07      	ldr	r2, [pc, #28]	; (20100a20 <ssi_init+0x44>)
20100a04:	601a      	str	r2, [r3, #0]
20100a06:	4b05      	ldr	r3, [pc, #20]	; (20100a1c <ssi_init+0x40>)
20100a08:	2202      	movs	r2, #2
20100a0a:	605a      	str	r2, [r3, #4]
20100a0c:	46c0      	nop			; (mov r8, r8)
20100a0e:	46bd      	mov	sp, r7
20100a10:	bd80      	pop	{r7, pc}
20100a12:	46c0      	nop			; (mov r8, r8)
20100a14:	40020000 	.word	0x40020000
20100a18:	02000200 	.word	0x02000200
20100a1c:	400a0000 	.word	0x400a0000
20100a20:	0000021b 	.word	0x0000021b

20100a24 <b2g>:
20100a24:	b580      	push	{r7, lr}
20100a26:	b082      	sub	sp, #8
20100a28:	af00      	add	r7, sp, #0
20100a2a:	6078      	str	r0, [r7, #4]
20100a2c:	687b      	ldr	r3, [r7, #4]
20100a2e:	085a      	lsrs	r2, r3, #1
20100a30:	687b      	ldr	r3, [r7, #4]
20100a32:	4053      	eors	r3, r2
20100a34:	0018      	movs	r0, r3
20100a36:	46bd      	mov	sp, r7
20100a38:	b002      	add	sp, #8
20100a3a:	bd80      	pop	{r7, pc}

20100a3c <g2b>:
20100a3c:	b580      	push	{r7, lr}
20100a3e:	b084      	sub	sp, #16
20100a40:	af00      	add	r7, sp, #0
20100a42:	6078      	str	r0, [r7, #4]
20100a44:	2300      	movs	r3, #0
20100a46:	60fb      	str	r3, [r7, #12]
20100a48:	2300      	movs	r3, #0
20100a4a:	60fb      	str	r3, [r7, #12]
20100a4c:	e006      	b.n	20100a5c <g2b+0x20>
20100a4e:	68fa      	ldr	r2, [r7, #12]
20100a50:	687b      	ldr	r3, [r7, #4]
20100a52:	4053      	eors	r3, r2
20100a54:	60fb      	str	r3, [r7, #12]
20100a56:	687b      	ldr	r3, [r7, #4]
20100a58:	085b      	lsrs	r3, r3, #1
20100a5a:	607b      	str	r3, [r7, #4]
20100a5c:	687b      	ldr	r3, [r7, #4]
20100a5e:	2b00      	cmp	r3, #0
20100a60:	d1f5      	bne.n	20100a4e <g2b+0x12>
20100a62:	68fb      	ldr	r3, [r7, #12]
20100a64:	0018      	movs	r0, r3
20100a66:	46bd      	mov	sp, r7
20100a68:	b004      	add	sp, #16
20100a6a:	bd80      	pop	{r7, pc}

20100a6c <SystemInit>:
20100a6c:	b580      	push	{r7, lr}
20100a6e:	af00      	add	r7, sp, #0
20100a70:	f7ff fe36 	bl	201006e0 <ClkConfig>
20100a74:	f7ff fd7a 	bl	2010056c <PortConfig>
20100a78:	f7ff fe6c 	bl	20100754 <TimerConfig>
20100a7c:	f7ff ff6e 	bl	2010095c <adc_init>
20100a80:	f7ff ff96 	bl	201009b0 <dac_init>
20100a84:	f7ff ffaa 	bl	201009dc <ssi_init>
20100a88:	f000 fc9e 	bl	201013c8 <adc_dma_init>
20100a8c:	46c0      	nop			; (mov r8, r8)
20100a8e:	46bd      	mov	sp, r7
20100a90:	bd80      	pop	{r7, pc}
20100a92:	46c0      	nop			; (mov r8, r8)

20100a94 <timer_wait>:
20100a94:	b580      	push	{r7, lr}
20100a96:	af00      	add	r7, sp, #0
20100a98:	46c0      	nop			; (mov r8, r8)
20100a9a:	4b05      	ldr	r3, [pc, #20]	; (20100ab0 <timer_wait+0x1c>)
20100a9c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100a9e:	2202      	movs	r2, #2
20100aa0:	4013      	ands	r3, r2
20100aa2:	d0fa      	beq.n	20100a9a <timer_wait+0x6>
20100aa4:	4b02      	ldr	r3, [pc, #8]	; (20100ab0 <timer_wait+0x1c>)
20100aa6:	2200      	movs	r2, #0
20100aa8:	655a      	str	r2, [r3, #84]	; 0x54
20100aaa:	46c0      	nop			; (mov r8, r8)
20100aac:	46bd      	mov	sp, r7
20100aae:	bd80      	pop	{r7, pc}
20100ab0:	40098000 	.word	0x40098000

20100ab4 <mycos>:
20100ab4:	4b05      	ldr	r3, [pc, #20]	; (20100acc <mycos+0x18>)
20100ab6:	4a06      	ldr	r2, [pc, #24]	; (20100ad0 <mycos+0x1c>)
20100ab8:	447b      	add	r3, pc
20100aba:	0580      	lsls	r0, r0, #22
20100abc:	589b      	ldr	r3, [r3, r2]
20100abe:	0d00      	lsrs	r0, r0, #20
20100ac0:	58c0      	ldr	r0, [r0, r3]
20100ac2:	b082      	sub	sp, #8
20100ac4:	9301      	str	r3, [sp, #4]
20100ac6:	b002      	add	sp, #8
20100ac8:	4770      	bx	lr
20100aca:	46c0      	nop			; (mov r8, r8)
20100acc:	ffeff5d0 	.word	0xffeff5d0
20100ad0:	00000000 	.word	0x00000000

20100ad4 <mysin>:
20100ad4:	4b07      	ldr	r3, [pc, #28]	; (20100af4 <mysin+0x20>)
20100ad6:	4a08      	ldr	r2, [pc, #32]	; (20100af8 <mysin+0x24>)
20100ad8:	447b      	add	r3, pc
20100ada:	589b      	ldr	r3, [r3, r2]
20100adc:	b082      	sub	sp, #8
20100ade:	9301      	str	r3, [sp, #4]
20100ae0:	23c0      	movs	r3, #192	; 0xc0
20100ae2:	009b      	lsls	r3, r3, #2
20100ae4:	469c      	mov	ip, r3
20100ae6:	4460      	add	r0, ip
20100ae8:	9b01      	ldr	r3, [sp, #4]
20100aea:	0580      	lsls	r0, r0, #22
20100aec:	0d00      	lsrs	r0, r0, #20
20100aee:	58c0      	ldr	r0, [r0, r3]
20100af0:	b002      	add	sp, #8
20100af2:	4770      	bx	lr
20100af4:	ffeff5b0 	.word	0xffeff5b0
20100af8:	00000000 	.word	0x00000000

20100afc <reg_init>:
20100afc:	2300      	movs	r3, #0
20100afe:	6001      	str	r1, [r0, #0]
20100b00:	6042      	str	r2, [r0, #4]
20100b02:	6083      	str	r3, [r0, #8]
20100b04:	60c3      	str	r3, [r0, #12]
20100b06:	4770      	bx	lr

20100b08 <reg_update>:
20100b08:	b510      	push	{r4, lr}
20100b0a:	6804      	ldr	r4, [r0, #0]
20100b0c:	6883      	ldr	r3, [r0, #8]
20100b0e:	434c      	muls	r4, r1
20100b10:	2a00      	cmp	r2, #0
20100b12:	d004      	beq.n	20100b1e <reg_update+0x16>
20100b14:	2b00      	cmp	r3, #0
20100b16:	dd09      	ble.n	20100b2c <reg_update+0x24>
20100b18:	2c00      	cmp	r4, #0
20100b1a:	dd00      	ble.n	20100b1e <reg_update+0x16>
20100b1c:	2400      	movs	r4, #0
20100b1e:	6842      	ldr	r2, [r0, #4]
20100b20:	18e3      	adds	r3, r4, r3
20100b22:	4351      	muls	r1, r2
20100b24:	18c9      	adds	r1, r1, r3
20100b26:	60c1      	str	r1, [r0, #12]
20100b28:	6083      	str	r3, [r0, #8]
20100b2a:	bd10      	pop	{r4, pc}
20100b2c:	2b00      	cmp	r3, #0
20100b2e:	d0f6      	beq.n	20100b1e <reg_update+0x16>
20100b30:	43e2      	mvns	r2, r4
20100b32:	17d2      	asrs	r2, r2, #31
20100b34:	4014      	ands	r4, r2
20100b36:	e7f2      	b.n	20100b1e <reg_update+0x16>

20100b38 <cord_atan>:
20100b38:	b5f0      	push	{r4, r5, r6, r7, lr}
20100b3a:	4645      	mov	r5, r8
20100b3c:	4657      	mov	r7, sl
20100b3e:	464e      	mov	r6, r9
20100b40:	b4e0      	push	{r5, r6, r7}
20100b42:	4b65      	ldr	r3, [pc, #404]	; (20100cd8 <cord_atan+0x1a0>)
20100b44:	b090      	sub	sp, #64	; 0x40
20100b46:	447b      	add	r3, pc
20100b48:	001c      	movs	r4, r3
20100b4a:	4694      	mov	ip, r2
20100b4c:	466a      	mov	r2, sp
20100b4e:	468a      	mov	sl, r1
20100b50:	cca2      	ldmia	r4!, {r1, r5, r7}
20100b52:	c2a2      	stmia	r2!, {r1, r5, r7}
20100b54:	cca2      	ldmia	r4!, {r1, r5, r7}
20100b56:	c2a2      	stmia	r2!, {r1, r5, r7}
20100b58:	cc22      	ldmia	r4!, {r1, r5}
20100b5a:	c222      	stmia	r2!, {r1, r5}
20100b5c:	3320      	adds	r3, #32
20100b5e:	aa08      	add	r2, sp, #32
20100b60:	4690      	mov	r8, r2
20100b62:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b64:	c232      	stmia	r2!, {r1, r4, r5}
20100b66:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b68:	c232      	stmia	r2!, {r1, r4, r5}
20100b6a:	cb12      	ldmia	r3!, {r1, r4}
20100b6c:	c212      	stmia	r2!, {r1, r4}
20100b6e:	6802      	ldr	r2, [r0, #0]
20100b70:	6845      	ldr	r5, [r0, #4]
20100b72:	17d1      	asrs	r1, r2, #31
20100b74:	1853      	adds	r3, r2, r1
20100b76:	466e      	mov	r6, sp
20100b78:	404b      	eors	r3, r1
20100b7a:	2d00      	cmp	r5, #0
20100b7c:	dd6c      	ble.n	20100c58 <cord_atan+0x120>
20100b7e:	195f      	adds	r7, r3, r5
20100b80:	1aeb      	subs	r3, r5, r3
20100b82:	9d00      	ldr	r5, [sp, #0]
20100b84:	2b00      	cmp	r3, #0
20100b86:	d100      	bne.n	20100b8a <cord_atan+0x52>
20100b88:	e094      	b.n	20100cb4 <cord_atan+0x17c>
20100b8a:	105c      	asrs	r4, r3, #1
20100b8c:	2b00      	cmp	r3, #0
20100b8e:	dd68      	ble.n	20100c62 <cord_atan+0x12a>
20100b90:	1078      	asrs	r0, r7, #1
20100b92:	1a1b      	subs	r3, r3, r0
20100b94:	6870      	ldr	r0, [r6, #4]
20100b96:	19e4      	adds	r4, r4, r7
20100b98:	4681      	mov	r9, r0
20100b9a:	444d      	add	r5, r9
20100b9c:	2b00      	cmp	r3, #0
20100b9e:	d100      	bne.n	20100ba2 <cord_atan+0x6a>
20100ba0:	e08a      	b.n	20100cb8 <cord_atan+0x180>
20100ba2:	1098      	asrs	r0, r3, #2
20100ba4:	2b00      	cmp	r3, #0
20100ba6:	dd62      	ble.n	20100c6e <cord_atan+0x136>
20100ba8:	1907      	adds	r7, r0, r4
20100baa:	10a4      	asrs	r4, r4, #2
20100bac:	1b18      	subs	r0, r3, r4
20100bae:	68b3      	ldr	r3, [r6, #8]
20100bb0:	4699      	mov	r9, r3
20100bb2:	444d      	add	r5, r9
20100bb4:	2800      	cmp	r0, #0
20100bb6:	d100      	bne.n	20100bba <cord_atan+0x82>
20100bb8:	e081      	b.n	20100cbe <cord_atan+0x186>
20100bba:	10c3      	asrs	r3, r0, #3
20100bbc:	2800      	cmp	r0, #0
20100bbe:	dd5c      	ble.n	20100c7a <cord_atan+0x142>
20100bc0:	10fc      	asrs	r4, r7, #3
20100bc2:	1b00      	subs	r0, r0, r4
20100bc4:	68f4      	ldr	r4, [r6, #12]
20100bc6:	19db      	adds	r3, r3, r7
20100bc8:	46a1      	mov	r9, r4
20100bca:	444d      	add	r5, r9
20100bcc:	2800      	cmp	r0, #0
20100bce:	d100      	bne.n	20100bd2 <cord_atan+0x9a>
20100bd0:	e077      	b.n	20100cc2 <cord_atan+0x18a>
20100bd2:	1104      	asrs	r4, r0, #4
20100bd4:	2800      	cmp	r0, #0
20100bd6:	dd56      	ble.n	20100c86 <cord_atan+0x14e>
20100bd8:	18e7      	adds	r7, r4, r3
20100bda:	111b      	asrs	r3, r3, #4
20100bdc:	1ac4      	subs	r4, r0, r3
20100bde:	6933      	ldr	r3, [r6, #16]
20100be0:	4699      	mov	r9, r3
20100be2:	444d      	add	r5, r9
20100be4:	2c00      	cmp	r4, #0
20100be6:	d100      	bne.n	20100bea <cord_atan+0xb2>
20100be8:	e06e      	b.n	20100cc8 <cord_atan+0x190>
20100bea:	1163      	asrs	r3, r4, #5
20100bec:	2c00      	cmp	r4, #0
20100bee:	dd50      	ble.n	20100c92 <cord_atan+0x15a>
20100bf0:	1178      	asrs	r0, r7, #5
20100bf2:	1a20      	subs	r0, r4, r0
20100bf4:	6974      	ldr	r4, [r6, #20]
20100bf6:	19db      	adds	r3, r3, r7
20100bf8:	46a1      	mov	r9, r4
20100bfa:	444d      	add	r5, r9
20100bfc:	2800      	cmp	r0, #0
20100bfe:	d065      	beq.n	20100ccc <cord_atan+0x194>
20100c00:	1184      	asrs	r4, r0, #6
20100c02:	2800      	cmp	r0, #0
20100c04:	dd4b      	ble.n	20100c9e <cord_atan+0x166>
20100c06:	18e7      	adds	r7, r4, r3
20100c08:	119b      	asrs	r3, r3, #6
20100c0a:	1ac0      	subs	r0, r0, r3
20100c0c:	69b3      	ldr	r3, [r6, #24]
20100c0e:	4699      	mov	r9, r3
20100c10:	444d      	add	r5, r9
20100c12:	2800      	cmp	r0, #0
20100c14:	d05d      	beq.n	20100cd2 <cord_atan+0x19a>
20100c16:	dd48      	ble.n	20100caa <cord_atan+0x172>
20100c18:	69f3      	ldr	r3, [r6, #28]
20100c1a:	11c0      	asrs	r0, r0, #7
20100c1c:	19c7      	adds	r7, r0, r7
20100c1e:	18ed      	adds	r5, r5, r3
20100c20:	2307      	movs	r3, #7
20100c22:	2a00      	cmp	r2, #0
20100c24:	db14      	blt.n	20100c50 <cord_atan+0x118>
20100c26:	2d00      	cmp	r5, #0
20100c28:	da03      	bge.n	20100c32 <cord_atan+0xfa>
20100c2a:	2280      	movs	r2, #128	; 0x80
20100c2c:	00d2      	lsls	r2, r2, #3
20100c2e:	4691      	mov	r9, r2
20100c30:	444d      	add	r5, r9
20100c32:	4652      	mov	r2, sl
20100c34:	6015      	str	r5, [r2, #0]
20100c36:	4642      	mov	r2, r8
20100c38:	009b      	lsls	r3, r3, #2
20100c3a:	58d0      	ldr	r0, [r2, r3]
20100c3c:	4663      	mov	r3, ip
20100c3e:	4378      	muls	r0, r7
20100c40:	1280      	asrs	r0, r0, #10
20100c42:	6018      	str	r0, [r3, #0]
20100c44:	b010      	add	sp, #64	; 0x40
20100c46:	bc1c      	pop	{r2, r3, r4}
20100c48:	4690      	mov	r8, r2
20100c4a:	4699      	mov	r9, r3
20100c4c:	46a2      	mov	sl, r4
20100c4e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100c50:	2280      	movs	r2, #128	; 0x80
20100c52:	0092      	lsls	r2, r2, #2
20100c54:	1b55      	subs	r5, r2, r5
20100c56:	e7e6      	b.n	20100c26 <cord_atan+0xee>
20100c58:	9900      	ldr	r1, [sp, #0]
20100c5a:	1b5f      	subs	r7, r3, r5
20100c5c:	195b      	adds	r3, r3, r5
20100c5e:	424d      	negs	r5, r1
20100c60:	e790      	b.n	20100b84 <cord_atan+0x4c>
20100c62:	6871      	ldr	r1, [r6, #4]
20100c64:	1078      	asrs	r0, r7, #1
20100c66:	1b3c      	subs	r4, r7, r4
20100c68:	18c3      	adds	r3, r0, r3
20100c6a:	1a6d      	subs	r5, r5, r1
20100c6c:	e796      	b.n	20100b9c <cord_atan+0x64>
20100c6e:	1a27      	subs	r7, r4, r0
20100c70:	10a0      	asrs	r0, r4, #2
20100c72:	18c0      	adds	r0, r0, r3
20100c74:	68b3      	ldr	r3, [r6, #8]
20100c76:	1aed      	subs	r5, r5, r3
20100c78:	e79c      	b.n	20100bb4 <cord_atan+0x7c>
20100c7a:	68f1      	ldr	r1, [r6, #12]
20100c7c:	10fc      	asrs	r4, r7, #3
20100c7e:	1afb      	subs	r3, r7, r3
20100c80:	1820      	adds	r0, r4, r0
20100c82:	1a6d      	subs	r5, r5, r1
20100c84:	e7a2      	b.n	20100bcc <cord_atan+0x94>
20100c86:	1b1f      	subs	r7, r3, r4
20100c88:	111c      	asrs	r4, r3, #4
20100c8a:	6933      	ldr	r3, [r6, #16]
20100c8c:	1824      	adds	r4, r4, r0
20100c8e:	1aed      	subs	r5, r5, r3
20100c90:	e7a8      	b.n	20100be4 <cord_atan+0xac>
20100c92:	6971      	ldr	r1, [r6, #20]
20100c94:	1178      	asrs	r0, r7, #5
20100c96:	1afb      	subs	r3, r7, r3
20100c98:	1900      	adds	r0, r0, r4
20100c9a:	1a6d      	subs	r5, r5, r1
20100c9c:	e7ae      	b.n	20100bfc <cord_atan+0xc4>
20100c9e:	1b1f      	subs	r7, r3, r4
20100ca0:	119b      	asrs	r3, r3, #6
20100ca2:	1818      	adds	r0, r3, r0
20100ca4:	69b3      	ldr	r3, [r6, #24]
20100ca6:	1aed      	subs	r5, r5, r3
20100ca8:	e7b3      	b.n	20100c12 <cord_atan+0xda>
20100caa:	69f3      	ldr	r3, [r6, #28]
20100cac:	11c4      	asrs	r4, r0, #7
20100cae:	1b3f      	subs	r7, r7, r4
20100cb0:	1aed      	subs	r5, r5, r3
20100cb2:	e7b5      	b.n	20100c20 <cord_atan+0xe8>
20100cb4:	2300      	movs	r3, #0
20100cb6:	e7b4      	b.n	20100c22 <cord_atan+0xea>
20100cb8:	0027      	movs	r7, r4
20100cba:	2301      	movs	r3, #1
20100cbc:	e7b1      	b.n	20100c22 <cord_atan+0xea>
20100cbe:	2302      	movs	r3, #2
20100cc0:	e7af      	b.n	20100c22 <cord_atan+0xea>
20100cc2:	001f      	movs	r7, r3
20100cc4:	2303      	movs	r3, #3
20100cc6:	e7ac      	b.n	20100c22 <cord_atan+0xea>
20100cc8:	2304      	movs	r3, #4
20100cca:	e7aa      	b.n	20100c22 <cord_atan+0xea>
20100ccc:	001f      	movs	r7, r3
20100cce:	2305      	movs	r3, #5
20100cd0:	e7a7      	b.n	20100c22 <cord_atan+0xea>
20100cd2:	2306      	movs	r3, #6
20100cd4:	e7a5      	b.n	20100c22 <cord_atan+0xea>
20100cd6:	46c0      	nop			; (mov r8, r8)
20100cd8:	00001ed6 	.word	0x00001ed6

20100cdc <sinpwm>:
20100cdc:	b5f0      	push	{r4, r5, r6, r7, lr}
20100cde:	465f      	mov	r7, fp
20100ce0:	4656      	mov	r6, sl
20100ce2:	4644      	mov	r4, r8
20100ce4:	464d      	mov	r5, r9
20100ce6:	b4f0      	push	{r4, r5, r6, r7}
20100ce8:	4b8c      	ldr	r3, [pc, #560]	; (20100f1c <sinpwm+0x240>)
20100cea:	b091      	sub	sp, #68	; 0x44
20100cec:	447b      	add	r3, pc
20100cee:	001d      	movs	r5, r3
20100cf0:	466c      	mov	r4, sp
20100cf2:	4688      	mov	r8, r1
20100cf4:	4693      	mov	fp, r2
20100cf6:	469c      	mov	ip, r3
20100cf8:	cd0e      	ldmia	r5!, {r1, r2, r3}
20100cfa:	c40e      	stmia	r4!, {r1, r2, r3}
20100cfc:	cd0e      	ldmia	r5!, {r1, r2, r3}
20100cfe:	c40e      	stmia	r4!, {r1, r2, r3}
20100d00:	cd0c      	ldmia	r5!, {r2, r3}
20100d02:	c40c      	stmia	r4!, {r2, r3}
20100d04:	ab08      	add	r3, sp, #32
20100d06:	469a      	mov	sl, r3
20100d08:	4663      	mov	r3, ip
20100d0a:	4654      	mov	r4, sl
20100d0c:	3320      	adds	r3, #32
20100d0e:	cb26      	ldmia	r3!, {r1, r2, r5}
20100d10:	c426      	stmia	r4!, {r1, r2, r5}
20100d12:	cb26      	ldmia	r3!, {r1, r2, r5}
20100d14:	c426      	stmia	r4!, {r1, r2, r5}
20100d16:	cb06      	ldmia	r3!, {r1, r2}
20100d18:	c406      	stmia	r4!, {r1, r2}
20100d1a:	4643      	mov	r3, r8
20100d1c:	681b      	ldr	r3, [r3, #0]
20100d1e:	4e80      	ldr	r6, [pc, #512]	; (20100f20 <sinpwm+0x244>)
20100d20:	17da      	asrs	r2, r3, #31
20100d22:	189c      	adds	r4, r3, r2
20100d24:	469c      	mov	ip, r3
20100d26:	4643      	mov	r3, r8
20100d28:	6859      	ldr	r1, [r3, #4]
20100d2a:	447e      	add	r6, pc
20100d2c:	466f      	mov	r7, sp
20100d2e:	4054      	eors	r4, r2
20100d30:	2900      	cmp	r1, #0
20100d32:	dc00      	bgt.n	20100d36 <sinpwm+0x5a>
20100d34:	e0a9      	b.n	20100e8a <sinpwm+0x1ae>
20100d36:	1863      	adds	r3, r4, r1
20100d38:	1b09      	subs	r1, r1, r4
20100d3a:	4688      	mov	r8, r1
20100d3c:	9c00      	ldr	r4, [sp, #0]
20100d3e:	4641      	mov	r1, r8
20100d40:	2900      	cmp	r1, #0
20100d42:	d100      	bne.n	20100d46 <sinpwm+0x6a>
20100d44:	e0d8      	b.n	20100ef8 <sinpwm+0x21c>
20100d46:	dc00      	bgt.n	20100d4a <sinpwm+0x6e>
20100d48:	e0a5      	b.n	20100e96 <sinpwm+0x1ba>
20100d4a:	4641      	mov	r1, r8
20100d4c:	4642      	mov	r2, r8
20100d4e:	1049      	asrs	r1, r1, #1
20100d50:	18c9      	adds	r1, r1, r3
20100d52:	105b      	asrs	r3, r3, #1
20100d54:	1ad3      	subs	r3, r2, r3
20100d56:	4698      	mov	r8, r3
20100d58:	687b      	ldr	r3, [r7, #4]
20100d5a:	4699      	mov	r9, r3
20100d5c:	444c      	add	r4, r9
20100d5e:	4643      	mov	r3, r8
20100d60:	2b00      	cmp	r3, #0
20100d62:	d100      	bne.n	20100d66 <sinpwm+0x8a>
20100d64:	e0ca      	b.n	20100efc <sinpwm+0x220>
20100d66:	dc00      	bgt.n	20100d6a <sinpwm+0x8e>
20100d68:	e09c      	b.n	20100ea4 <sinpwm+0x1c8>
20100d6a:	4643      	mov	r3, r8
20100d6c:	4642      	mov	r2, r8
20100d6e:	109b      	asrs	r3, r3, #2
20100d70:	185b      	adds	r3, r3, r1
20100d72:	1089      	asrs	r1, r1, #2
20100d74:	1a52      	subs	r2, r2, r1
20100d76:	4690      	mov	r8, r2
20100d78:	68ba      	ldr	r2, [r7, #8]
20100d7a:	4691      	mov	r9, r2
20100d7c:	444c      	add	r4, r9
20100d7e:	4641      	mov	r1, r8
20100d80:	2900      	cmp	r1, #0
20100d82:	d100      	bne.n	20100d86 <sinpwm+0xaa>
20100d84:	e0bd      	b.n	20100f02 <sinpwm+0x226>
20100d86:	4642      	mov	r2, r8
20100d88:	dc00      	bgt.n	20100d8c <sinpwm+0xb0>
20100d8a:	e092      	b.n	20100eb2 <sinpwm+0x1d6>
20100d8c:	10c9      	asrs	r1, r1, #3
20100d8e:	18c9      	adds	r1, r1, r3
20100d90:	10db      	asrs	r3, r3, #3
20100d92:	1ad3      	subs	r3, r2, r3
20100d94:	4698      	mov	r8, r3
20100d96:	68fb      	ldr	r3, [r7, #12]
20100d98:	4699      	mov	r9, r3
20100d9a:	444c      	add	r4, r9
20100d9c:	4643      	mov	r3, r8
20100d9e:	2b00      	cmp	r3, #0
20100da0:	d100      	bne.n	20100da4 <sinpwm+0xc8>
20100da2:	e0b0      	b.n	20100f06 <sinpwm+0x22a>
20100da4:	dc00      	bgt.n	20100da8 <sinpwm+0xcc>
20100da6:	e08b      	b.n	20100ec0 <sinpwm+0x1e4>
20100da8:	4643      	mov	r3, r8
20100daa:	4642      	mov	r2, r8
20100dac:	111b      	asrs	r3, r3, #4
20100dae:	185b      	adds	r3, r3, r1
20100db0:	1109      	asrs	r1, r1, #4
20100db2:	1a51      	subs	r1, r2, r1
20100db4:	693a      	ldr	r2, [r7, #16]
20100db6:	4690      	mov	r8, r2
20100db8:	4444      	add	r4, r8
20100dba:	2900      	cmp	r1, #0
20100dbc:	d100      	bne.n	20100dc0 <sinpwm+0xe4>
20100dbe:	e0a5      	b.n	20100f0c <sinpwm+0x230>
20100dc0:	114a      	asrs	r2, r1, #5
20100dc2:	4690      	mov	r8, r2
20100dc4:	2900      	cmp	r1, #0
20100dc6:	dc00      	bgt.n	20100dca <sinpwm+0xee>
20100dc8:	e081      	b.n	20100ece <sinpwm+0x1f2>
20100dca:	4498      	add	r8, r3
20100dcc:	115b      	asrs	r3, r3, #5
20100dce:	1ac9      	subs	r1, r1, r3
20100dd0:	697b      	ldr	r3, [r7, #20]
20100dd2:	46c1      	mov	r9, r8
20100dd4:	4698      	mov	r8, r3
20100dd6:	4444      	add	r4, r8
20100dd8:	2900      	cmp	r1, #0
20100dda:	d100      	bne.n	20100dde <sinpwm+0x102>
20100ddc:	e098      	b.n	20100f10 <sinpwm+0x234>
20100dde:	118b      	asrs	r3, r1, #6
20100de0:	2900      	cmp	r1, #0
20100de2:	dc00      	bgt.n	20100de6 <sinpwm+0x10a>
20100de4:	e07a      	b.n	20100edc <sinpwm+0x200>
20100de6:	444b      	add	r3, r9
20100de8:	4698      	mov	r8, r3
20100dea:	464b      	mov	r3, r9
20100dec:	119b      	asrs	r3, r3, #6
20100dee:	1ac9      	subs	r1, r1, r3
20100df0:	69bb      	ldr	r3, [r7, #24]
20100df2:	4699      	mov	r9, r3
20100df4:	444c      	add	r4, r9
20100df6:	2900      	cmp	r1, #0
20100df8:	d100      	bne.n	20100dfc <sinpwm+0x120>
20100dfa:	e08c      	b.n	20100f16 <sinpwm+0x23a>
20100dfc:	dc00      	bgt.n	20100e00 <sinpwm+0x124>
20100dfe:	e075      	b.n	20100eec <sinpwm+0x210>
20100e00:	11c9      	asrs	r1, r1, #7
20100e02:	000b      	movs	r3, r1
20100e04:	69f9      	ldr	r1, [r7, #28]
20100e06:	4443      	add	r3, r8
20100e08:	1864      	adds	r4, r4, r1
20100e0a:	2107      	movs	r1, #7
20100e0c:	4667      	mov	r7, ip
20100e0e:	2f00      	cmp	r7, #0
20100e10:	db37      	blt.n	20100e82 <sinpwm+0x1a6>
20100e12:	2c00      	cmp	r4, #0
20100e14:	da03      	bge.n	20100e1e <sinpwm+0x142>
20100e16:	2280      	movs	r2, #128	; 0x80
20100e18:	00d2      	lsls	r2, r2, #3
20100e1a:	4694      	mov	ip, r2
20100e1c:	4464      	add	r4, ip
20100e1e:	4652      	mov	r2, sl
20100e20:	0089      	lsls	r1, r1, #2
20100e22:	5851      	ldr	r1, [r2, r1]
20100e24:	0022      	movs	r2, r4
20100e26:	434b      	muls	r3, r1
20100e28:	21fa      	movs	r1, #250	; 0xfa
20100e2a:	445a      	add	r2, fp
20100e2c:	0592      	lsls	r2, r2, #22
20100e2e:	151b      	asrs	r3, r3, #20
20100e30:	0d92      	lsrs	r2, r2, #22
20100e32:	0049      	lsls	r1, r1, #1
20100e34:	428b      	cmp	r3, r1
20100e36:	dd21      	ble.n	20100e7c <sinpwm+0x1a0>
20100e38:	000b      	movs	r3, r1
20100e3a:	2501      	movs	r5, #1
20100e3c:	4f39      	ldr	r7, [pc, #228]	; (20100f24 <sinpwm+0x248>)
20100e3e:	493a      	ldr	r1, [pc, #232]	; (20100f28 <sinpwm+0x24c>)
20100e40:	5874      	ldr	r4, [r6, r1]
20100e42:	0091      	lsls	r1, r2, #2
20100e44:	5909      	ldr	r1, [r1, r4]
20100e46:	434b      	muls	r3, r1
20100e48:	129b      	asrs	r3, r3, #10
20100e4a:	6003      	str	r3, [r0, #0]
20100e4c:	0013      	movs	r3, r2
20100e4e:	33aa      	adds	r3, #170	; 0xaa
20100e50:	059b      	lsls	r3, r3, #22
20100e52:	0d1b      	lsrs	r3, r3, #20
20100e54:	5919      	ldr	r1, [r3, r4]
20100e56:	4b35      	ldr	r3, [pc, #212]	; (20100f2c <sinpwm+0x250>)
20100e58:	4379      	muls	r1, r7
20100e5a:	1a9a      	subs	r2, r3, r2
20100e5c:	0592      	lsls	r2, r2, #22
20100e5e:	0d12      	lsrs	r2, r2, #20
20100e60:	5913      	ldr	r3, [r2, r4]
20100e62:	1289      	asrs	r1, r1, #10
20100e64:	437b      	muls	r3, r7
20100e66:	129b      	asrs	r3, r3, #10
20100e68:	6041      	str	r1, [r0, #4]
20100e6a:	6083      	str	r3, [r0, #8]
20100e6c:	0028      	movs	r0, r5
20100e6e:	b011      	add	sp, #68	; 0x44
20100e70:	bc3c      	pop	{r2, r3, r4, r5}
20100e72:	4690      	mov	r8, r2
20100e74:	4699      	mov	r9, r3
20100e76:	46a2      	mov	sl, r4
20100e78:	46ab      	mov	fp, r5
20100e7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100e7c:	425f      	negs	r7, r3
20100e7e:	2500      	movs	r5, #0
20100e80:	e7dd      	b.n	20100e3e <sinpwm+0x162>
20100e82:	2780      	movs	r7, #128	; 0x80
20100e84:	00bf      	lsls	r7, r7, #2
20100e86:	1b3c      	subs	r4, r7, r4
20100e88:	e7c3      	b.n	20100e12 <sinpwm+0x136>
20100e8a:	46a0      	mov	r8, r4
20100e8c:	9a00      	ldr	r2, [sp, #0]
20100e8e:	1a63      	subs	r3, r4, r1
20100e90:	4488      	add	r8, r1
20100e92:	4254      	negs	r4, r2
20100e94:	e753      	b.n	20100d3e <sinpwm+0x62>
20100e96:	1049      	asrs	r1, r1, #1
20100e98:	1a59      	subs	r1, r3, r1
20100e9a:	105b      	asrs	r3, r3, #1
20100e9c:	4498      	add	r8, r3
20100e9e:	687b      	ldr	r3, [r7, #4]
20100ea0:	1ae4      	subs	r4, r4, r3
20100ea2:	e75c      	b.n	20100d5e <sinpwm+0x82>
20100ea4:	109b      	asrs	r3, r3, #2
20100ea6:	68ba      	ldr	r2, [r7, #8]
20100ea8:	1acb      	subs	r3, r1, r3
20100eaa:	1089      	asrs	r1, r1, #2
20100eac:	4488      	add	r8, r1
20100eae:	1aa4      	subs	r4, r4, r2
20100eb0:	e765      	b.n	20100d7e <sinpwm+0xa2>
20100eb2:	10c9      	asrs	r1, r1, #3
20100eb4:	1a59      	subs	r1, r3, r1
20100eb6:	10db      	asrs	r3, r3, #3
20100eb8:	4498      	add	r8, r3
20100eba:	68fb      	ldr	r3, [r7, #12]
20100ebc:	1ae4      	subs	r4, r4, r3
20100ebe:	e76d      	b.n	20100d9c <sinpwm+0xc0>
20100ec0:	111b      	asrs	r3, r3, #4
20100ec2:	693a      	ldr	r2, [r7, #16]
20100ec4:	1acb      	subs	r3, r1, r3
20100ec6:	1109      	asrs	r1, r1, #4
20100ec8:	4441      	add	r1, r8
20100eca:	1aa4      	subs	r4, r4, r2
20100ecc:	e775      	b.n	20100dba <sinpwm+0xde>
20100ece:	1a9a      	subs	r2, r3, r2
20100ed0:	115b      	asrs	r3, r3, #5
20100ed2:	1859      	adds	r1, r3, r1
20100ed4:	697b      	ldr	r3, [r7, #20]
20100ed6:	4691      	mov	r9, r2
20100ed8:	1ae4      	subs	r4, r4, r3
20100eda:	e77d      	b.n	20100dd8 <sinpwm+0xfc>
20100edc:	464a      	mov	r2, r9
20100ede:	1ad3      	subs	r3, r2, r3
20100ee0:	4698      	mov	r8, r3
20100ee2:	1193      	asrs	r3, r2, #6
20100ee4:	1859      	adds	r1, r3, r1
20100ee6:	69bb      	ldr	r3, [r7, #24]
20100ee8:	1ae4      	subs	r4, r4, r3
20100eea:	e784      	b.n	20100df6 <sinpwm+0x11a>
20100eec:	4643      	mov	r3, r8
20100eee:	11c9      	asrs	r1, r1, #7
20100ef0:	1a5b      	subs	r3, r3, r1
20100ef2:	69f9      	ldr	r1, [r7, #28]
20100ef4:	1a64      	subs	r4, r4, r1
20100ef6:	e788      	b.n	20100e0a <sinpwm+0x12e>
20100ef8:	2100      	movs	r1, #0
20100efa:	e787      	b.n	20100e0c <sinpwm+0x130>
20100efc:	000b      	movs	r3, r1
20100efe:	2101      	movs	r1, #1
20100f00:	e784      	b.n	20100e0c <sinpwm+0x130>
20100f02:	2102      	movs	r1, #2
20100f04:	e782      	b.n	20100e0c <sinpwm+0x130>
20100f06:	000b      	movs	r3, r1
20100f08:	2103      	movs	r1, #3
20100f0a:	e77f      	b.n	20100e0c <sinpwm+0x130>
20100f0c:	2104      	movs	r1, #4
20100f0e:	e77d      	b.n	20100e0c <sinpwm+0x130>
20100f10:	464b      	mov	r3, r9
20100f12:	2105      	movs	r1, #5
20100f14:	e77a      	b.n	20100e0c <sinpwm+0x130>
20100f16:	4643      	mov	r3, r8
20100f18:	2106      	movs	r1, #6
20100f1a:	e777      	b.n	20100e0c <sinpwm+0x130>
20100f1c:	00001d30 	.word	0x00001d30
20100f20:	ffeff35e 	.word	0xffeff35e
20100f24:	fffffe0c 	.word	0xfffffe0c
20100f28:	00000000 	.word	0x00000000
20100f2c:	000004aa 	.word	0x000004aa

20100f30 <svpwm>:
20100f30:	b5f0      	push	{r4, r5, r6, r7, lr}
20100f32:	465f      	mov	r7, fp
20100f34:	4656      	mov	r6, sl
20100f36:	4644      	mov	r4, r8
20100f38:	464d      	mov	r5, r9
20100f3a:	b4f0      	push	{r4, r5, r6, r7}
20100f3c:	0005      	movs	r5, r0
20100f3e:	48d0      	ldr	r0, [pc, #832]	; (20101280 <svpwm+0x350>)
20100f40:	b091      	sub	sp, #68	; 0x44
20100f42:	4478      	add	r0, pc
20100f44:	0006      	movs	r6, r0
20100f46:	466c      	mov	r4, sp
20100f48:	4bce      	ldr	r3, [pc, #824]	; (20101284 <svpwm+0x354>)
20100f4a:	4693      	mov	fp, r2
20100f4c:	447b      	add	r3, pc
20100f4e:	469a      	mov	sl, r3
20100f50:	468c      	mov	ip, r1
20100f52:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100f54:	c40e      	stmia	r4!, {r1, r2, r3}
20100f56:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100f58:	c40e      	stmia	r4!, {r1, r2, r3}
20100f5a:	ce0c      	ldmia	r6!, {r2, r3}
20100f5c:	c40c      	stmia	r4!, {r2, r3}
20100f5e:	ae08      	add	r6, sp, #32
20100f60:	0034      	movs	r4, r6
20100f62:	3020      	adds	r0, #32
20100f64:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f66:	c40e      	stmia	r4!, {r1, r2, r3}
20100f68:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f6a:	c40e      	stmia	r4!, {r1, r2, r3}
20100f6c:	c80c      	ldmia	r0!, {r2, r3}
20100f6e:	c40c      	stmia	r4!, {r2, r3}
20100f70:	4663      	mov	r3, ip
20100f72:	681c      	ldr	r4, [r3, #0]
20100f74:	466f      	mov	r7, sp
20100f76:	17e2      	asrs	r2, r4, #31
20100f78:	18a3      	adds	r3, r4, r2
20100f7a:	4053      	eors	r3, r2
20100f7c:	4698      	mov	r8, r3
20100f7e:	4663      	mov	r3, ip
20100f80:	685b      	ldr	r3, [r3, #4]
20100f82:	2b00      	cmp	r3, #0
20100f84:	dc00      	bgt.n	20100f88 <svpwm+0x58>
20100f86:	e0b5      	b.n	201010f4 <svpwm+0x1c4>
20100f88:	4641      	mov	r1, r8
20100f8a:	18c8      	adds	r0, r1, r3
20100f8c:	1a5b      	subs	r3, r3, r1
20100f8e:	4698      	mov	r8, r3
20100f90:	9b00      	ldr	r3, [sp, #0]
20100f92:	4641      	mov	r1, r8
20100f94:	2900      	cmp	r1, #0
20100f96:	d100      	bne.n	20100f9a <svpwm+0x6a>
20100f98:	e15f      	b.n	2010125a <svpwm+0x32a>
20100f9a:	dc00      	bgt.n	20100f9e <svpwm+0x6e>
20100f9c:	e0b0      	b.n	20101100 <svpwm+0x1d0>
20100f9e:	4641      	mov	r1, r8
20100fa0:	1049      	asrs	r1, r1, #1
20100fa2:	4689      	mov	r9, r1
20100fa4:	1041      	asrs	r1, r0, #1
20100fa6:	4481      	add	r9, r0
20100fa8:	4640      	mov	r0, r8
20100faa:	1a41      	subs	r1, r0, r1
20100fac:	4688      	mov	r8, r1
20100fae:	6879      	ldr	r1, [r7, #4]
20100fb0:	468c      	mov	ip, r1
20100fb2:	4463      	add	r3, ip
20100fb4:	4641      	mov	r1, r8
20100fb6:	2900      	cmp	r1, #0
20100fb8:	d100      	bne.n	20100fbc <svpwm+0x8c>
20100fba:	e150      	b.n	2010125e <svpwm+0x32e>
20100fbc:	dc00      	bgt.n	20100fc0 <svpwm+0x90>
20100fbe:	e0a7      	b.n	20101110 <svpwm+0x1e0>
20100fc0:	4641      	mov	r1, r8
20100fc2:	1089      	asrs	r1, r1, #2
20100fc4:	4449      	add	r1, r9
20100fc6:	0008      	movs	r0, r1
20100fc8:	4649      	mov	r1, r9
20100fca:	4642      	mov	r2, r8
20100fcc:	1089      	asrs	r1, r1, #2
20100fce:	1a51      	subs	r1, r2, r1
20100fd0:	68ba      	ldr	r2, [r7, #8]
20100fd2:	4688      	mov	r8, r1
20100fd4:	4694      	mov	ip, r2
20100fd6:	4463      	add	r3, ip
20100fd8:	4641      	mov	r1, r8
20100fda:	2900      	cmp	r1, #0
20100fdc:	d100      	bne.n	20100fe0 <svpwm+0xb0>
20100fde:	e141      	b.n	20101264 <svpwm+0x334>
20100fe0:	4642      	mov	r2, r8
20100fe2:	dc00      	bgt.n	20100fe6 <svpwm+0xb6>
20100fe4:	e09c      	b.n	20101120 <svpwm+0x1f0>
20100fe6:	10c9      	asrs	r1, r1, #3
20100fe8:	1809      	adds	r1, r1, r0
20100fea:	10c0      	asrs	r0, r0, #3
20100fec:	1a12      	subs	r2, r2, r0
20100fee:	4690      	mov	r8, r2
20100ff0:	68fa      	ldr	r2, [r7, #12]
20100ff2:	4694      	mov	ip, r2
20100ff4:	4463      	add	r3, ip
20100ff6:	4640      	mov	r0, r8
20100ff8:	2800      	cmp	r0, #0
20100ffa:	d100      	bne.n	20100ffe <svpwm+0xce>
20100ffc:	e134      	b.n	20101268 <svpwm+0x338>
20100ffe:	4642      	mov	r2, r8
20101000:	dc00      	bgt.n	20101004 <svpwm+0xd4>
20101002:	e094      	b.n	2010112e <svpwm+0x1fe>
20101004:	1100      	asrs	r0, r0, #4
20101006:	1840      	adds	r0, r0, r1
20101008:	1109      	asrs	r1, r1, #4
2010100a:	1a52      	subs	r2, r2, r1
2010100c:	4690      	mov	r8, r2
2010100e:	693a      	ldr	r2, [r7, #16]
20101010:	4694      	mov	ip, r2
20101012:	4463      	add	r3, ip
20101014:	4641      	mov	r1, r8
20101016:	2900      	cmp	r1, #0
20101018:	d100      	bne.n	2010101c <svpwm+0xec>
2010101a:	e128      	b.n	2010126e <svpwm+0x33e>
2010101c:	4642      	mov	r2, r8
2010101e:	dc00      	bgt.n	20101022 <svpwm+0xf2>
20101020:	e08c      	b.n	2010113c <svpwm+0x20c>
20101022:	1149      	asrs	r1, r1, #5
20101024:	4689      	mov	r9, r1
20101026:	1141      	asrs	r1, r0, #5
20101028:	1a51      	subs	r1, r2, r1
2010102a:	697a      	ldr	r2, [r7, #20]
2010102c:	4481      	add	r9, r0
2010102e:	4694      	mov	ip, r2
20101030:	4463      	add	r3, ip
20101032:	2900      	cmp	r1, #0
20101034:	d100      	bne.n	20101038 <svpwm+0x108>
20101036:	e11c      	b.n	20101272 <svpwm+0x342>
20101038:	1188      	asrs	r0, r1, #6
2010103a:	2900      	cmp	r1, #0
2010103c:	dc00      	bgt.n	20101040 <svpwm+0x110>
2010103e:	e086      	b.n	2010114e <svpwm+0x21e>
20101040:	464a      	mov	r2, r9
20101042:	4448      	add	r0, r9
20101044:	4680      	mov	r8, r0
20101046:	1190      	asrs	r0, r2, #6
20101048:	69ba      	ldr	r2, [r7, #24]
2010104a:	1a09      	subs	r1, r1, r0
2010104c:	4694      	mov	ip, r2
2010104e:	4463      	add	r3, ip
20101050:	2900      	cmp	r1, #0
20101052:	d100      	bne.n	20101056 <svpwm+0x126>
20101054:	e110      	b.n	20101278 <svpwm+0x348>
20101056:	dc00      	bgt.n	2010105a <svpwm+0x12a>
20101058:	e0e2      	b.n	20101220 <svpwm+0x2f0>
2010105a:	11c9      	asrs	r1, r1, #7
2010105c:	4441      	add	r1, r8
2010105e:	0008      	movs	r0, r1
20101060:	69f9      	ldr	r1, [r7, #28]
20101062:	185b      	adds	r3, r3, r1
20101064:	2107      	movs	r1, #7
20101066:	2c00      	cmp	r4, #0
20101068:	db40      	blt.n	201010ec <svpwm+0x1bc>
2010106a:	2b00      	cmp	r3, #0
2010106c:	da03      	bge.n	20101076 <svpwm+0x146>
2010106e:	2280      	movs	r2, #128	; 0x80
20101070:	00d2      	lsls	r2, r2, #3
20101072:	4694      	mov	ip, r2
20101074:	4463      	add	r3, ip
20101076:	22fa      	movs	r2, #250	; 0xfa
20101078:	0089      	lsls	r1, r1, #2
2010107a:	5871      	ldr	r1, [r6, r1]
2010107c:	445b      	add	r3, fp
2010107e:	4341      	muls	r1, r0
20101080:	059b      	lsls	r3, r3, #22
20101082:	1509      	asrs	r1, r1, #20
20101084:	0d9b      	lsrs	r3, r3, #22
20101086:	0052      	lsls	r2, r2, #1
20101088:	2400      	movs	r4, #0
2010108a:	4291      	cmp	r1, r2
2010108c:	dd01      	ble.n	20101092 <svpwm+0x162>
2010108e:	0011      	movs	r1, r2
20101090:	3401      	adds	r4, #1
20101092:	0058      	lsls	r0, r3, #1
20101094:	18c0      	adds	r0, r0, r3
20101096:	1240      	asrs	r0, r0, #9
20101098:	3801      	subs	r0, #1
2010109a:	4a7b      	ldr	r2, [pc, #492]	; (20101288 <svpwm+0x358>)
2010109c:	2804      	cmp	r0, #4
2010109e:	d920      	bls.n	201010e2 <svpwm+0x1b2>
201010a0:	26c0      	movs	r6, #192	; 0xc0
201010a2:	4650      	mov	r0, sl
201010a4:	00b6      	lsls	r6, r6, #2
201010a6:	46b4      	mov	ip, r6
201010a8:	5880      	ldr	r0, [r0, r2]
201010aa:	4a78      	ldr	r2, [pc, #480]	; (2010128c <svpwm+0x35c>)
201010ac:	1ad2      	subs	r2, r2, r3
201010ae:	4463      	add	r3, ip
201010b0:	0592      	lsls	r2, r2, #22
201010b2:	059b      	lsls	r3, r3, #22
201010b4:	0d12      	lsrs	r2, r2, #20
201010b6:	0d1b      	lsrs	r3, r3, #20
201010b8:	581b      	ldr	r3, [r3, r0]
201010ba:	5812      	ldr	r2, [r2, r0]
201010bc:	434a      	muls	r2, r1
201010be:	4359      	muls	r1, r3
201010c0:	1292      	asrs	r2, r2, #10
201010c2:	1289      	asrs	r1, r1, #10
201010c4:	1853      	adds	r3, r2, r1
201010c6:	602b      	str	r3, [r5, #0]
201010c8:	1a8b      	subs	r3, r1, r2
201010ca:	4252      	negs	r2, r2
201010cc:	1a52      	subs	r2, r2, r1
201010ce:	606b      	str	r3, [r5, #4]
201010d0:	60aa      	str	r2, [r5, #8]
201010d2:	0020      	movs	r0, r4
201010d4:	b011      	add	sp, #68	; 0x44
201010d6:	bc3c      	pop	{r2, r3, r4, r5}
201010d8:	4690      	mov	r8, r2
201010da:	4699      	mov	r9, r3
201010dc:	46a2      	mov	sl, r4
201010de:	46ab      	mov	fp, r5
201010e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
201010e2:	f000 fac1 	bl	20101668 <__gnu_thumb1_case_uqi>
201010e6:	856c      	.short	0x856c
201010e8:	553d      	.short	0x553d
201010ea:	a3          	.byte	0xa3
201010eb:	00          	.byte	0x00
201010ec:	2480      	movs	r4, #128	; 0x80
201010ee:	00a4      	lsls	r4, r4, #2
201010f0:	1ae3      	subs	r3, r4, r3
201010f2:	e7ba      	b.n	2010106a <svpwm+0x13a>
201010f4:	4642      	mov	r2, r8
201010f6:	4498      	add	r8, r3
201010f8:	1ad0      	subs	r0, r2, r3
201010fa:	9b00      	ldr	r3, [sp, #0]
201010fc:	425b      	negs	r3, r3
201010fe:	e748      	b.n	20100f92 <svpwm+0x62>
20101100:	1049      	asrs	r1, r1, #1
20101102:	1a42      	subs	r2, r0, r1
20101104:	4691      	mov	r9, r2
20101106:	687a      	ldr	r2, [r7, #4]
20101108:	1041      	asrs	r1, r0, #1
2010110a:	4488      	add	r8, r1
2010110c:	1a9b      	subs	r3, r3, r2
2010110e:	e751      	b.n	20100fb4 <svpwm+0x84>
20101110:	464a      	mov	r2, r9
20101112:	1089      	asrs	r1, r1, #2
20101114:	1a50      	subs	r0, r2, r1
20101116:	1091      	asrs	r1, r2, #2
20101118:	68ba      	ldr	r2, [r7, #8]
2010111a:	4488      	add	r8, r1
2010111c:	1a9b      	subs	r3, r3, r2
2010111e:	e75b      	b.n	20100fd8 <svpwm+0xa8>
20101120:	10c9      	asrs	r1, r1, #3
20101122:	68fa      	ldr	r2, [r7, #12]
20101124:	1a41      	subs	r1, r0, r1
20101126:	10c0      	asrs	r0, r0, #3
20101128:	4480      	add	r8, r0
2010112a:	1a9b      	subs	r3, r3, r2
2010112c:	e763      	b.n	20100ff6 <svpwm+0xc6>
2010112e:	1100      	asrs	r0, r0, #4
20101130:	693a      	ldr	r2, [r7, #16]
20101132:	1a08      	subs	r0, r1, r0
20101134:	1109      	asrs	r1, r1, #4
20101136:	4488      	add	r8, r1
20101138:	1a9b      	subs	r3, r3, r2
2010113a:	e76b      	b.n	20101014 <svpwm+0xe4>
2010113c:	1149      	asrs	r1, r1, #5
2010113e:	1a42      	subs	r2, r0, r1
20101140:	1140      	asrs	r0, r0, #5
20101142:	0001      	movs	r1, r0
20101144:	4691      	mov	r9, r2
20101146:	697a      	ldr	r2, [r7, #20]
20101148:	4441      	add	r1, r8
2010114a:	1a9b      	subs	r3, r3, r2
2010114c:	e771      	b.n	20101032 <svpwm+0x102>
2010114e:	464a      	mov	r2, r9
20101150:	1a12      	subs	r2, r2, r0
20101152:	4690      	mov	r8, r2
20101154:	464a      	mov	r2, r9
20101156:	1190      	asrs	r0, r2, #6
20101158:	69ba      	ldr	r2, [r7, #24]
2010115a:	1841      	adds	r1, r0, r1
2010115c:	1a9b      	subs	r3, r3, r2
2010115e:	e777      	b.n	20101050 <svpwm+0x120>
20101160:	4650      	mov	r0, sl
20101162:	5880      	ldr	r0, [r0, r2]
20101164:	4a4a      	ldr	r2, [pc, #296]	; (20101290 <svpwm+0x360>)
20101166:	1ad2      	subs	r2, r2, r3
20101168:	3301      	adds	r3, #1
2010116a:	0592      	lsls	r2, r2, #22
2010116c:	33ff      	adds	r3, #255	; 0xff
2010116e:	0d12      	lsrs	r2, r2, #20
20101170:	059b      	lsls	r3, r3, #22
20101172:	5812      	ldr	r2, [r2, r0]
20101174:	0d1b      	lsrs	r3, r3, #20
20101176:	581b      	ldr	r3, [r3, r0]
20101178:	434a      	muls	r2, r1
2010117a:	434b      	muls	r3, r1
2010117c:	1292      	asrs	r2, r2, #10
2010117e:	1299      	asrs	r1, r3, #10
20101180:	4253      	negs	r3, r2
20101182:	1a5b      	subs	r3, r3, r1
20101184:	602b      	str	r3, [r5, #0]
20101186:	1a53      	subs	r3, r2, r1
20101188:	1851      	adds	r1, r2, r1
2010118a:	606b      	str	r3, [r5, #4]
2010118c:	60a9      	str	r1, [r5, #8]
2010118e:	e7a0      	b.n	201010d2 <svpwm+0x1a2>
20101190:	4650      	mov	r0, sl
20101192:	5880      	ldr	r0, [r0, r2]
20101194:	4a3f      	ldr	r2, [pc, #252]	; (20101294 <svpwm+0x364>)
20101196:	1ad2      	subs	r2, r2, r3
20101198:	3356      	adds	r3, #86	; 0x56
2010119a:	0592      	lsls	r2, r2, #22
2010119c:	059b      	lsls	r3, r3, #22
2010119e:	0d12      	lsrs	r2, r2, #20
201011a0:	0d1b      	lsrs	r3, r3, #20
201011a2:	5816      	ldr	r6, [r2, r0]
201011a4:	581b      	ldr	r3, [r3, r0]
201011a6:	434e      	muls	r6, r1
201011a8:	434b      	muls	r3, r1
201011aa:	12b6      	asrs	r6, r6, #10
201011ac:	1299      	asrs	r1, r3, #10
201011ae:	1b8b      	subs	r3, r1, r6
201011b0:	602b      	str	r3, [r5, #0]
201011b2:	4273      	negs	r3, r6
201011b4:	1a5b      	subs	r3, r3, r1
201011b6:	1871      	adds	r1, r6, r1
201011b8:	606b      	str	r3, [r5, #4]
201011ba:	60a9      	str	r1, [r5, #8]
201011bc:	e789      	b.n	201010d2 <svpwm+0x1a2>
201011be:	4650      	mov	r0, sl
201011c0:	5886      	ldr	r6, [r0, r2]
201011c2:	4a35      	ldr	r2, [pc, #212]	; (20101298 <svpwm+0x368>)
201011c4:	1ad2      	subs	r2, r2, r3
201011c6:	0592      	lsls	r2, r2, #22
201011c8:	0d12      	lsrs	r2, r2, #20
201011ca:	5990      	ldr	r0, [r2, r6]
201011cc:	4a33      	ldr	r2, [pc, #204]	; (2010129c <svpwm+0x36c>)
201011ce:	4348      	muls	r0, r1
201011d0:	4694      	mov	ip, r2
201011d2:	4463      	add	r3, ip
201011d4:	059b      	lsls	r3, r3, #22
201011d6:	0d1b      	lsrs	r3, r3, #20
201011d8:	599b      	ldr	r3, [r3, r6]
201011da:	1280      	asrs	r0, r0, #10
201011dc:	4359      	muls	r1, r3
201011de:	1289      	asrs	r1, r1, #10
201011e0:	1a43      	subs	r3, r0, r1
201011e2:	602b      	str	r3, [r5, #0]
201011e4:	1843      	adds	r3, r0, r1
201011e6:	4240      	negs	r0, r0
201011e8:	1a40      	subs	r0, r0, r1
201011ea:	606b      	str	r3, [r5, #4]
201011ec:	60a8      	str	r0, [r5, #8]
201011ee:	e770      	b.n	201010d2 <svpwm+0x1a2>
201011f0:	4650      	mov	r0, sl
201011f2:	5880      	ldr	r0, [r0, r2]
201011f4:	4a2a      	ldr	r2, [pc, #168]	; (201012a0 <svpwm+0x370>)
201011f6:	1ad2      	subs	r2, r2, r3
201011f8:	33ac      	adds	r3, #172	; 0xac
201011fa:	0592      	lsls	r2, r2, #22
201011fc:	33ff      	adds	r3, #255	; 0xff
201011fe:	0d12      	lsrs	r2, r2, #20
20101200:	059b      	lsls	r3, r3, #22
20101202:	5816      	ldr	r6, [r2, r0]
20101204:	0d1b      	lsrs	r3, r3, #20
20101206:	581b      	ldr	r3, [r3, r0]
20101208:	434e      	muls	r6, r1
2010120a:	4359      	muls	r1, r3
2010120c:	12b6      	asrs	r6, r6, #10
2010120e:	1289      	asrs	r1, r1, #10
20101210:	4273      	negs	r3, r6
20101212:	1a5b      	subs	r3, r3, r1
20101214:	602b      	str	r3, [r5, #0]
20101216:	1873      	adds	r3, r6, r1
20101218:	1b89      	subs	r1, r1, r6
2010121a:	606b      	str	r3, [r5, #4]
2010121c:	60a9      	str	r1, [r5, #8]
2010121e:	e758      	b.n	201010d2 <svpwm+0x1a2>
20101220:	4642      	mov	r2, r8
20101222:	11c9      	asrs	r1, r1, #7
20101224:	1a50      	subs	r0, r2, r1
20101226:	69f9      	ldr	r1, [r7, #28]
20101228:	1a5b      	subs	r3, r3, r1
2010122a:	e71b      	b.n	20101064 <svpwm+0x134>
2010122c:	4650      	mov	r0, sl
2010122e:	5882      	ldr	r2, [r0, r2]
20101230:	481c      	ldr	r0, [pc, #112]	; (201012a4 <svpwm+0x374>)
20101232:	1ac0      	subs	r0, r0, r3
20101234:	3b55      	subs	r3, #85	; 0x55
20101236:	0580      	lsls	r0, r0, #22
20101238:	059b      	lsls	r3, r3, #22
2010123a:	0d00      	lsrs	r0, r0, #20
2010123c:	0d1b      	lsrs	r3, r3, #20
2010123e:	589b      	ldr	r3, [r3, r2]
20101240:	5880      	ldr	r0, [r0, r2]
20101242:	4348      	muls	r0, r1
20101244:	4359      	muls	r1, r3
20101246:	1280      	asrs	r0, r0, #10
20101248:	1289      	asrs	r1, r1, #10
2010124a:	1843      	adds	r3, r0, r1
2010124c:	602b      	str	r3, [r5, #0]
2010124e:	4243      	negs	r3, r0
20101250:	1a5b      	subs	r3, r3, r1
20101252:	1a41      	subs	r1, r0, r1
20101254:	606b      	str	r3, [r5, #4]
20101256:	60a9      	str	r1, [r5, #8]
20101258:	e73b      	b.n	201010d2 <svpwm+0x1a2>
2010125a:	2100      	movs	r1, #0
2010125c:	e703      	b.n	20101066 <svpwm+0x136>
2010125e:	4648      	mov	r0, r9
20101260:	2101      	movs	r1, #1
20101262:	e700      	b.n	20101066 <svpwm+0x136>
20101264:	2102      	movs	r1, #2
20101266:	e6fe      	b.n	20101066 <svpwm+0x136>
20101268:	0008      	movs	r0, r1
2010126a:	2103      	movs	r1, #3
2010126c:	e6fb      	b.n	20101066 <svpwm+0x136>
2010126e:	2104      	movs	r1, #4
20101270:	e6f9      	b.n	20101066 <svpwm+0x136>
20101272:	4648      	mov	r0, r9
20101274:	2105      	movs	r1, #5
20101276:	e6f6      	b.n	20101066 <svpwm+0x136>
20101278:	4640      	mov	r0, r8
2010127a:	2106      	movs	r1, #6
2010127c:	e6f3      	b.n	20101066 <svpwm+0x136>
2010127e:	46c0      	nop			; (mov r8, r8)
20101280:	00001ada 	.word	0x00001ada
20101284:	ffeff13c 	.word	0xffeff13c
20101288:	00000000 	.word	0x00000000
2010128c:	000007aa 	.word	0x000007aa
20101290:	000009aa 	.word	0x000009aa
20101294:	00000a54 	.word	0x00000a54
20101298:	00000854 	.word	0x00000854
2010129c:	00000256 	.word	0x00000256
201012a0:	000008ff 	.word	0x000008ff
201012a4:	00000aff 	.word	0x00000aff

201012a8 <get_speed>:
201012a8:	4a10      	ldr	r2, [pc, #64]	; (201012ec <get_speed+0x44>)
201012aa:	b510      	push	{r4, lr}
201012ac:	447a      	add	r2, pc
201012ae:	6813      	ldr	r3, [r2, #0]
201012b0:	6854      	ldr	r4, [r2, #4]
201012b2:	1ac3      	subs	r3, r0, r3
201012b4:	6050      	str	r0, [r2, #4]
201012b6:	6014      	str	r4, [r2, #0]
201012b8:	17da      	asrs	r2, r3, #31
201012ba:	1898      	adds	r0, r3, r2
201012bc:	4050      	eors	r0, r2
201012be:	22fa      	movs	r2, #250	; 0xfa
201012c0:	0092      	lsls	r2, r2, #2
201012c2:	4290      	cmp	r0, r2
201012c4:	dd04      	ble.n	201012d0 <get_speed+0x28>
201012c6:	2b00      	cmp	r3, #0
201012c8:	db0a      	blt.n	201012e0 <get_speed+0x38>
201012ca:	4a09      	ldr	r2, [pc, #36]	; (201012f0 <get_speed+0x48>)
201012cc:	4694      	mov	ip, r2
201012ce:	4463      	add	r3, ip
201012d0:	680a      	ldr	r2, [r1, #0]
201012d2:	4808      	ldr	r0, [pc, #32]	; (201012f4 <get_speed+0x4c>)
201012d4:	18d2      	adds	r2, r2, r3
201012d6:	105b      	asrs	r3, r3, #1
201012d8:	4343      	muls	r3, r0
201012da:	600a      	str	r2, [r1, #0]
201012dc:	1318      	asrs	r0, r3, #12
201012de:	bd10      	pop	{r4, pc}
201012e0:	2280      	movs	r2, #128	; 0x80
201012e2:	0152      	lsls	r2, r2, #5
201012e4:	4694      	mov	ip, r2
201012e6:	4463      	add	r3, ip
201012e8:	e7f2      	b.n	201012d0 <get_speed+0x28>
201012ea:	46c0      	nop			; (mov r8, r8)
201012ec:	ffefee10 	.word	0xffefee10
201012f0:	fffff000 	.word	0xfffff000
201012f4:	0002ae7c 	.word	0x0002ae7c

201012f8 <c_mfilter>:
201012f8:	221f      	movs	r2, #31
201012fa:	4908      	ldr	r1, [pc, #32]	; (2010131c <c_mfilter+0x24>)
201012fc:	b510      	push	{r4, lr}
201012fe:	4479      	add	r1, pc
20101300:	688b      	ldr	r3, [r1, #8]
20101302:	3301      	adds	r3, #1
20101304:	4013      	ands	r3, r2
20101306:	608b      	str	r3, [r1, #8]
20101308:	009b      	lsls	r3, r3, #2
2010130a:	18cb      	adds	r3, r1, r3
2010130c:	68ca      	ldr	r2, [r1, #12]
2010130e:	691c      	ldr	r4, [r3, #16]
20101310:	6118      	str	r0, [r3, #16]
20101312:	1b12      	subs	r2, r2, r4
20101314:	1812      	adds	r2, r2, r0
20101316:	1150      	asrs	r0, r2, #5
20101318:	60ca      	str	r2, [r1, #12]
2010131a:	bd10      	pop	{r4, pc}
2010131c:	ffefedbe 	.word	0xffefedbe

20101320 <rfilter1>:
20101320:	490e      	ldr	r1, [pc, #56]	; (2010135c <rfilter1+0x3c>)
20101322:	b570      	push	{r4, r5, r6, lr}
20101324:	4479      	add	r1, pc
20101326:	698e      	ldr	r6, [r1, #24]
20101328:	4b0d      	ldr	r3, [pc, #52]	; (20101360 <rfilter1+0x40>)
2010132a:	4a0e      	ldr	r2, [pc, #56]	; (20101364 <rfilter1+0x44>)
2010132c:	435e      	muls	r6, r3
2010132e:	0013      	movs	r3, r2
20101330:	690c      	ldr	r4, [r1, #16]
20101332:	4a0d      	ldr	r2, [pc, #52]	; (20101368 <rfilter1+0x48>)
20101334:	4363      	muls	r3, r4
20101336:	4342      	muls	r2, r0
20101338:	18f3      	adds	r3, r6, r3
2010133a:	694d      	ldr	r5, [r1, #20]
2010133c:	189b      	adds	r3, r3, r2
2010133e:	4a0b      	ldr	r2, [pc, #44]	; (2010136c <rfilter1+0x4c>)
20101340:	69ce      	ldr	r6, [r1, #28]
20101342:	436a      	muls	r2, r5
20101344:	189b      	adds	r3, r3, r2
20101346:	4a0a      	ldr	r2, [pc, #40]	; (20101370 <rfilter1+0x50>)
20101348:	61cd      	str	r5, [r1, #28]
2010134a:	4372      	muls	r2, r6
2010134c:	189b      	adds	r3, r3, r2
2010134e:	129a      	asrs	r2, r3, #10
20101350:	6148      	str	r0, [r1, #20]
20101352:	618c      	str	r4, [r1, #24]
20101354:	1498      	asrs	r0, r3, #18
20101356:	610a      	str	r2, [r1, #16]
20101358:	bd70      	pop	{r4, r5, r6, pc}
2010135a:	46c0      	nop			; (mov r8, r8)
2010135c:	ffefee18 	.word	0xffefee18
20101360:	fffffc33 	.word	0xfffffc33
20101364:	000007c6 	.word	0x000007c6
20101368:	0003f0a4 	.word	0x0003f0a4
2010136c:	fff83a2e 	.word	0xfff83a2e
20101370:	0003dc29 	.word	0x0003dc29

20101374 <rfilter2>:
20101374:	490e      	ldr	r1, [pc, #56]	; (201013b0 <rfilter2+0x3c>)
20101376:	b570      	push	{r4, r5, r6, lr}
20101378:	4479      	add	r1, pc
2010137a:	6a8e      	ldr	r6, [r1, #40]	; 0x28
2010137c:	4b0d      	ldr	r3, [pc, #52]	; (201013b4 <rfilter2+0x40>)
2010137e:	4a0e      	ldr	r2, [pc, #56]	; (201013b8 <rfilter2+0x44>)
20101380:	435e      	muls	r6, r3
20101382:	0013      	movs	r3, r2
20101384:	6a0c      	ldr	r4, [r1, #32]
20101386:	4a0d      	ldr	r2, [pc, #52]	; (201013bc <rfilter2+0x48>)
20101388:	4363      	muls	r3, r4
2010138a:	4342      	muls	r2, r0
2010138c:	18f3      	adds	r3, r6, r3
2010138e:	6a4d      	ldr	r5, [r1, #36]	; 0x24
20101390:	189b      	adds	r3, r3, r2
20101392:	4a0b      	ldr	r2, [pc, #44]	; (201013c0 <rfilter2+0x4c>)
20101394:	6ace      	ldr	r6, [r1, #44]	; 0x2c
20101396:	436a      	muls	r2, r5
20101398:	189b      	adds	r3, r3, r2
2010139a:	4a0a      	ldr	r2, [pc, #40]	; (201013c4 <rfilter2+0x50>)
2010139c:	62cd      	str	r5, [r1, #44]	; 0x2c
2010139e:	4372      	muls	r2, r6
201013a0:	189b      	adds	r3, r3, r2
201013a2:	129a      	asrs	r2, r3, #10
201013a4:	6248      	str	r0, [r1, #36]	; 0x24
201013a6:	628c      	str	r4, [r1, #40]	; 0x28
201013a8:	1498      	asrs	r0, r3, #18
201013aa:	620a      	str	r2, [r1, #32]
201013ac:	bd70      	pop	{r4, r5, r6, pc}
201013ae:	46c0      	nop			; (mov r8, r8)
201013b0:	ffefedc4 	.word	0xffefedc4
201013b4:	fffffc66 	.word	0xfffffc66
201013b8:	0000078a 	.word	0x0000078a
201013bc:	0003e3d7 	.word	0x0003e3d7
201013c0:	fff8767b 	.word	0xfff8767b
201013c4:	0003b5c3 	.word	0x0003b5c3

201013c8 <adc_dma_init>:
201013c8:	b580      	push	{r7, lr}
201013ca:	af00      	add	r7, sp, #0
201013cc:	4b1c      	ldr	r3, [pc, #112]	; (20101440 <adc_dma_init+0x78>)
201013ce:	4a1c      	ldr	r2, [pc, #112]	; (20101440 <adc_dma_init+0x78>)
201013d0:	69d2      	ldr	r2, [r2, #28]
201013d2:	2120      	movs	r1, #32
201013d4:	430a      	orrs	r2, r1
201013d6:	61da      	str	r2, [r3, #28]
201013d8:	4b1a      	ldr	r3, [pc, #104]	; (20101444 <adc_dma_init+0x7c>)
201013da:	4a1b      	ldr	r2, [pc, #108]	; (20101448 <adc_dma_init+0x80>)
201013dc:	447a      	add	r2, pc
201013de:	609a      	str	r2, [r3, #8]
201013e0:	4b18      	ldr	r3, [pc, #96]	; (20101444 <adc_dma_init+0x7c>)
201013e2:	2201      	movs	r2, #1
201013e4:	4252      	negs	r2, r2
201013e6:	62da      	str	r2, [r3, #44]	; 0x2c
201013e8:	4b16      	ldr	r3, [pc, #88]	; (20101444 <adc_dma_init+0x7c>)
201013ea:	2201      	movs	r2, #1
201013ec:	4252      	negs	r2, r2
201013ee:	621a      	str	r2, [r3, #32]
201013f0:	4b14      	ldr	r3, [pc, #80]	; (20101444 <adc_dma_init+0x7c>)
201013f2:	2201      	movs	r2, #1
201013f4:	4252      	negs	r2, r2
201013f6:	635a      	str	r2, [r3, #52]	; 0x34
201013f8:	4b12      	ldr	r3, [pc, #72]	; (20101444 <adc_dma_init+0x7c>)
201013fa:	2280      	movs	r2, #128	; 0x80
201013fc:	05d2      	lsls	r2, r2, #23
201013fe:	61da      	str	r2, [r3, #28]
20101400:	4b10      	ldr	r3, [pc, #64]	; (20101444 <adc_dma_init+0x7c>)
20101402:	2280      	movs	r2, #128	; 0x80
20101404:	05d2      	lsls	r2, r2, #23
20101406:	625a      	str	r2, [r3, #36]	; 0x24
20101408:	4b0e      	ldr	r3, [pc, #56]	; (20101444 <adc_dma_init+0x7c>)
2010140a:	2201      	movs	r2, #1
2010140c:	605a      	str	r2, [r3, #4]
2010140e:	4a0f      	ldr	r2, [pc, #60]	; (2010144c <adc_dma_init+0x84>)
20101410:	447a      	add	r2, pc
20101412:	23f0      	movs	r3, #240	; 0xf0
20101414:	005b      	lsls	r3, r3, #1
20101416:	490e      	ldr	r1, [pc, #56]	; (20101450 <adc_dma_init+0x88>)
20101418:	50d1      	str	r1, [r2, r3]
2010141a:	4b0e      	ldr	r3, [pc, #56]	; (20101454 <adc_dma_init+0x8c>)
2010141c:	447b      	add	r3, pc
2010141e:	330c      	adds	r3, #12
20101420:	0019      	movs	r1, r3
20101422:	4a0d      	ldr	r2, [pc, #52]	; (20101458 <adc_dma_init+0x90>)
20101424:	447a      	add	r2, pc
20101426:	23f2      	movs	r3, #242	; 0xf2
20101428:	005b      	lsls	r3, r3, #1
2010142a:	50d1      	str	r1, [r2, r3]
2010142c:	4a0b      	ldr	r2, [pc, #44]	; (2010145c <adc_dma_init+0x94>)
2010142e:	447a      	add	r2, pc
20101430:	23f4      	movs	r3, #244	; 0xf4
20101432:	005b      	lsls	r3, r3, #1
20101434:	490a      	ldr	r1, [pc, #40]	; (20101460 <adc_dma_init+0x98>)
20101436:	50d1      	str	r1, [r2, r3]
20101438:	46c0      	nop			; (mov r8, r8)
2010143a:	46bd      	mov	sp, r7
2010143c:	bd80      	pop	{r7, pc}
2010143e:	46c0      	nop			; (mov r8, r8)
20101440:	40020000 	.word	0x40020000
20101444:	40028000 	.word	0x40028000
20101448:	00000420 	.word	0x00000420
2010144c:	000003ec 	.word	0x000003ec
20101450:	40088018 	.word	0x40088018
20101454:	000005e0 	.word	0x000005e0
20101458:	000003d8 	.word	0x000003d8
2010145c:	000003ce 	.word	0x000003ce
20101460:	ae000031 	.word	0xae000031

20101464 <adc_dma_start>:
20101464:	b580      	push	{r7, lr}
20101466:	af00      	add	r7, sp, #0
20101468:	4b06      	ldr	r3, [pc, #24]	; (20101484 <adc_dma_start+0x20>)
2010146a:	4a06      	ldr	r2, [pc, #24]	; (20101484 <adc_dma_start+0x20>)
2010146c:	6812      	ldr	r2, [r2, #0]
2010146e:	2108      	movs	r1, #8
20101470:	430a      	orrs	r2, r1
20101472:	601a      	str	r2, [r3, #0]
20101474:	4b04      	ldr	r3, [pc, #16]	; (20101488 <adc_dma_start+0x24>)
20101476:	2280      	movs	r2, #128	; 0x80
20101478:	05d2      	lsls	r2, r2, #23
2010147a:	629a      	str	r2, [r3, #40]	; 0x28
2010147c:	46c0      	nop			; (mov r8, r8)
2010147e:	46bd      	mov	sp, r7
20101480:	bd80      	pop	{r7, pc}
20101482:	46c0      	nop			; (mov r8, r8)
20101484:	40088000 	.word	0x40088000
20101488:	40028000 	.word	0x40028000

2010148c <adc_dma_wait>:
2010148c:	b580      	push	{r7, lr}
2010148e:	af00      	add	r7, sp, #0
20101490:	46c0      	nop			; (mov r8, r8)
20101492:	4a0b      	ldr	r2, [pc, #44]	; (201014c0 <adc_dma_wait+0x34>)
20101494:	447a      	add	r2, pc
20101496:	23f4      	movs	r3, #244	; 0xf4
20101498:	005b      	lsls	r3, r3, #1
2010149a:	58d3      	ldr	r3, [r2, r3]
2010149c:	2207      	movs	r2, #7
2010149e:	4013      	ands	r3, r2
201014a0:	d1f7      	bne.n	20101492 <adc_dma_wait+0x6>
201014a2:	4b08      	ldr	r3, [pc, #32]	; (201014c4 <adc_dma_wait+0x38>)
201014a4:	4a07      	ldr	r2, [pc, #28]	; (201014c4 <adc_dma_wait+0x38>)
201014a6:	6812      	ldr	r2, [r2, #0]
201014a8:	2108      	movs	r1, #8
201014aa:	438a      	bics	r2, r1
201014ac:	601a      	str	r2, [r3, #0]
201014ae:	4a06      	ldr	r2, [pc, #24]	; (201014c8 <adc_dma_wait+0x3c>)
201014b0:	447a      	add	r2, pc
201014b2:	23f4      	movs	r3, #244	; 0xf4
201014b4:	005b      	lsls	r3, r3, #1
201014b6:	4905      	ldr	r1, [pc, #20]	; (201014cc <adc_dma_wait+0x40>)
201014b8:	50d1      	str	r1, [r2, r3]
201014ba:	46c0      	nop			; (mov r8, r8)
201014bc:	46bd      	mov	sp, r7
201014be:	bd80      	pop	{r7, pc}
201014c0:	00000368 	.word	0x00000368
201014c4:	40088000 	.word	0x40088000
201014c8:	0000034c 	.word	0x0000034c
201014cc:	ae000031 	.word	0xae000031

201014d0 <asm_test_loop>:
201014d0:	b5f0      	push	{r4, r5, r6, r7, lr}
201014d2:	6803      	ldr	r3, [r0, #0]
201014d4:	17dc      	asrs	r4, r3, #31
201014d6:	191b      	adds	r3, r3, r4
201014d8:	4063      	eors	r3, r4
201014da:	6844      	ldr	r4, [r0, #4]
201014dc:	4040      	eors	r0, r0
201014de:	407f      	eors	r7, r7
201014e0:	1c1d      	adds	r5, r3, #0
201014e2:	1c24      	adds	r4, r4, #0
201014e4:	dd01      	ble.n	201014ea <ylesseq>
201014e6:	191b      	adds	r3, r3, r4
201014e8:	1b64      	subs	r4, r4, r5

201014ea <ylesseq>:
201014ea:	1b1b      	subs	r3, r3, r4
201014ec:	1964      	adds	r4, r4, r5
201014ee:	bdf0      	pop	{r4, r5, r6, r7, pc}

201014f0 <AngTable>:
201014f0:	00000080 	.word	0x00000080
201014f4:	0000004c 	.word	0x0000004c
201014f8:	00000028 	.word	0x00000028
201014fc:	00000014 	.word	0x00000014
20101500:	0000000a 	.word	0x0000000a
20101504:	00000005 	.word	0x00000005
20101508:	00000003 	.word	0x00000003
2010150c:	00000001 	.word	0x00000001

20101510 <kc>:
20101510:	000002d4 	.word	0x000002d4
20101514:	00000288 	.word	0x00000288
20101518:	00000274 	.word	0x00000274
2010151c:	0000026f 	.word	0x0000026f
20101520:	0000026f 	.word	0x0000026f
20101524:	0000026e 	.word	0x0000026e
20101528:	0000026e 	.word	0x0000026e
2010152c:	0000026e 	.word	0x0000026e

20101530 <abc_to_dq>:
20101530:	b570      	push	{r4, r5, r6, lr}
20101532:	4b49      	ldr	r3, [pc, #292]	; (20101658 <dot3+0x1c>)
20101534:	0092      	lsls	r2, r2, #2
20101536:	589c      	ldr	r4, [r3, r2]
20101538:	6805      	ldr	r5, [r0, #0]
2010153a:	436c      	muls	r4, r5
2010153c:	4e31      	ldr	r6, [pc, #196]	; (20101604 <P_4PI3>)
2010153e:	18b6      	adds	r6, r6, r2
20101540:	4d34      	ldr	r5, [pc, #208]	; (20101614 <MASK1023>)
20101542:	4035      	ands	r5, r6
20101544:	595e      	ldr	r6, [r3, r5]
20101546:	6845      	ldr	r5, [r0, #4]
20101548:	4375      	muls	r5, r6
2010154a:	1964      	adds	r4, r4, r5
2010154c:	4e2e      	ldr	r6, [pc, #184]	; (20101608 <P_2PI3>)
2010154e:	18b6      	adds	r6, r6, r2
20101550:	4d30      	ldr	r5, [pc, #192]	; (20101614 <MASK1023>)
20101552:	4035      	ands	r5, r6
20101554:	595e      	ldr	r6, [r3, r5]
20101556:	6885      	ldr	r5, [r0, #8]
20101558:	4375      	muls	r5, r6
2010155a:	1964      	adds	r4, r4, r5
2010155c:	12a4      	asrs	r4, r4, #10
2010155e:	600c      	str	r4, [r1, #0]
20101560:	4e27      	ldr	r6, [pc, #156]	; (20101600 <P_3PI2>)
20101562:	18b6      	adds	r6, r6, r2
20101564:	4d2b      	ldr	r5, [pc, #172]	; (20101614 <MASK1023>)
20101566:	4035      	ands	r5, r6
20101568:	595e      	ldr	r6, [r3, r5]
2010156a:	6804      	ldr	r4, [r0, #0]
2010156c:	4374      	muls	r4, r6
2010156e:	4e27      	ldr	r6, [pc, #156]	; (2010160c <P_4PI33PI2>)
20101570:	18b6      	adds	r6, r6, r2
20101572:	4d28      	ldr	r5, [pc, #160]	; (20101614 <MASK1023>)
20101574:	4035      	ands	r5, r6
20101576:	595e      	ldr	r6, [r3, r5]
20101578:	6845      	ldr	r5, [r0, #4]
2010157a:	4375      	muls	r5, r6
2010157c:	1964      	adds	r4, r4, r5
2010157e:	4e24      	ldr	r6, [pc, #144]	; (20101610 <P_2PI33PI2>)
20101580:	18b6      	adds	r6, r6, r2
20101582:	4d24      	ldr	r5, [pc, #144]	; (20101614 <MASK1023>)
20101584:	4035      	ands	r5, r6
20101586:	595e      	ldr	r6, [r3, r5]
20101588:	6885      	ldr	r5, [r0, #8]
2010158a:	4375      	muls	r5, r6
2010158c:	1964      	adds	r4, r4, r5
2010158e:	12a4      	asrs	r4, r4, #10
20101590:	4076      	eors	r6, r6
20101592:	1b36      	subs	r6, r6, r4
20101594:	604e      	str	r6, [r1, #4]
20101596:	bd70      	pop	{r4, r5, r6, pc}

20101598 <dq_to_abc>:
20101598:	b570      	push	{r4, r5, r6, lr}
2010159a:	4b2f      	ldr	r3, [pc, #188]	; (20101658 <dot3+0x1c>)
2010159c:	0092      	lsls	r2, r2, #2
2010159e:	589c      	ldr	r4, [r3, r2]
201015a0:	680d      	ldr	r5, [r1, #0]
201015a2:	436c      	muls	r4, r5
201015a4:	4e16      	ldr	r6, [pc, #88]	; (20101600 <P_3PI2>)
201015a6:	18b6      	adds	r6, r6, r2
201015a8:	4d1a      	ldr	r5, [pc, #104]	; (20101614 <MASK1023>)
201015aa:	4035      	ands	r5, r6
201015ac:	595e      	ldr	r6, [r3, r5]
201015ae:	684d      	ldr	r5, [r1, #4]
201015b0:	4375      	muls	r5, r6
201015b2:	1b64      	subs	r4, r4, r5
201015b4:	1524      	asrs	r4, r4, #20
201015b6:	6004      	str	r4, [r0, #0]
201015b8:	4e12      	ldr	r6, [pc, #72]	; (20101604 <P_4PI3>)
201015ba:	18b6      	adds	r6, r6, r2
201015bc:	4d15      	ldr	r5, [pc, #84]	; (20101614 <MASK1023>)
201015be:	4035      	ands	r5, r6
201015c0:	595c      	ldr	r4, [r3, r5]
201015c2:	680d      	ldr	r5, [r1, #0]
201015c4:	436c      	muls	r4, r5
201015c6:	4e11      	ldr	r6, [pc, #68]	; (2010160c <P_4PI33PI2>)
201015c8:	18b6      	adds	r6, r6, r2
201015ca:	4d12      	ldr	r5, [pc, #72]	; (20101614 <MASK1023>)
201015cc:	4035      	ands	r5, r6
201015ce:	595e      	ldr	r6, [r3, r5]
201015d0:	684d      	ldr	r5, [r1, #4]
201015d2:	4375      	muls	r5, r6
201015d4:	1b64      	subs	r4, r4, r5
201015d6:	1524      	asrs	r4, r4, #20
201015d8:	6044      	str	r4, [r0, #4]
201015da:	4e0b      	ldr	r6, [pc, #44]	; (20101608 <P_2PI3>)
201015dc:	18b6      	adds	r6, r6, r2
201015de:	4d0d      	ldr	r5, [pc, #52]	; (20101614 <MASK1023>)
201015e0:	4035      	ands	r5, r6
201015e2:	595c      	ldr	r4, [r3, r5]
201015e4:	680d      	ldr	r5, [r1, #0]
201015e6:	436c      	muls	r4, r5
201015e8:	4e09      	ldr	r6, [pc, #36]	; (20101610 <P_2PI33PI2>)
201015ea:	18b6      	adds	r6, r6, r2
201015ec:	4d09      	ldr	r5, [pc, #36]	; (20101614 <MASK1023>)
201015ee:	4035      	ands	r5, r6
201015f0:	595e      	ldr	r6, [r3, r5]
201015f2:	684d      	ldr	r5, [r1, #4]
201015f4:	4375      	muls	r5, r6
201015f6:	1b64      	subs	r4, r4, r5
201015f8:	1524      	asrs	r4, r4, #20
201015fa:	6084      	str	r4, [r0, #8]
201015fc:	bd70      	pop	{r4, r5, r6, pc}
201015fe:	46c0      	nop			; (mov r8, r8)

20101600 <P_3PI2>:
20101600:	00000c00 	.word	0x00000c00

20101604 <P_4PI3>:
20101604:	00000aaa 	.word	0x00000aaa

20101608 <P_2PI3>:
20101608:	00000555 	.word	0x00000555

2010160c <P_4PI33PI2>:
2010160c:	000016aa 	.word	0x000016aa

20101610 <P_2PI33PI2>:
20101610:	00001155 	.word	0x00001155

20101614 <MASK1023>:
20101614:	00000ffc 	.word	0x00000ffc

20101618 <mfilter>:
20101618:	4910      	ldr	r1, [pc, #64]	; (2010165c <dot3+0x20>)
2010161a:	680a      	ldr	r2, [r1, #0]
2010161c:	3201      	adds	r2, #1
2010161e:	231f      	movs	r3, #31
20101620:	401a      	ands	r2, r3
20101622:	600a      	str	r2, [r1, #0]
20101624:	490e      	ldr	r1, [pc, #56]	; (20101660 <dot3+0x24>)
20101626:	0092      	lsls	r2, r2, #2
20101628:	1889      	adds	r1, r1, r2
2010162a:	680a      	ldr	r2, [r1, #0]
2010162c:	6008      	str	r0, [r1, #0]
2010162e:	1a80      	subs	r0, r0, r2
20101630:	490c      	ldr	r1, [pc, #48]	; (20101664 <dot3+0x28>)
20101632:	680a      	ldr	r2, [r1, #0]
20101634:	1880      	adds	r0, r0, r2
20101636:	6008      	str	r0, [r1, #0]
20101638:	1140      	asrs	r0, r0, #5
2010163a:	46f7      	mov	pc, lr

2010163c <dot3>:
2010163c:	b580      	push	{r7, lr}
2010163e:	6802      	ldr	r2, [r0, #0]
20101640:	680b      	ldr	r3, [r1, #0]
20101642:	435a      	muls	r2, r3
20101644:	1c17      	adds	r7, r2, #0
20101646:	6842      	ldr	r2, [r0, #4]
20101648:	684b      	ldr	r3, [r1, #4]
2010164a:	435a      	muls	r2, r3
2010164c:	18bf      	adds	r7, r7, r2
2010164e:	6880      	ldr	r0, [r0, #8]
20101650:	688b      	ldr	r3, [r1, #8]
20101652:	4358      	muls	r0, r3
20101654:	1838      	adds	r0, r7, r0
20101656:	bd80      	pop	{r7, pc}
20101658:	20101a20 	.word	0x20101a20
2010165c:	20000008 	.word	0x20000008
20101660:	2000000c 	.word	0x2000000c
20101664:	20000004 	.word	0x20000004

20101668 <__gnu_thumb1_case_uqi>:
20101668:	b402      	push	{r1}
2010166a:	4671      	mov	r1, lr
2010166c:	0849      	lsrs	r1, r1, #1
2010166e:	0049      	lsls	r1, r1, #1
20101670:	5c09      	ldrb	r1, [r1, r0]
20101672:	0049      	lsls	r1, r1, #1
20101674:	448e      	add	lr, r1
20101676:	bc02      	pop	{r1}
20101678:	4770      	bx	lr
2010167a:	46c0      	nop			; (mov r8, r8)
	...

20101800 <dma_ctr_str>:
	...

20101a00 <adc_dma_buffer>:
	...
